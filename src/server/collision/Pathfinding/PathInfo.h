/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef TRINITY_PATHINFO_H
#define TRINITY_PATHINFO_H

#include "Path.h"
#include "SharedDefines.h"
#include "DetourNavMesh.h"
#include "DetourNavMeshQuery.h"

class Unit;

// 64*6.0f=384y  number_of_points*interval = max_path_len
// this is way more than actual evade range
// I think we can safely cut those down even more
#define MAX_PATH_LENGTH         64
#define MAX_POINT_PATH_LENGTH   64

#define SMOOTH_PATH_STEP_SIZE   6.0f
#define SMOOTH_PATH_SLOP        0.4f

#define VERTEX_SIZE       3
#define INVALID_POLYREF   0

enum PathType
{
    PATHFIND_BLANK          = 0x0000,   // path not built yet
    PATHFIND_NORMAL         = 0x0001,   // normal path
    PATHFIND_SHORTCUT       = 0x0002,   // travel through obstacles, terrain, air, etc (old behavior)
    PATHFIND_INCOMPLETE     = 0x0004,   // we have partial path to follow - getting closer to target
    PATHFIND_NOPATH         = 0x0008,   // no valid path at all or error in generating one
    PATHFIND_NOT_USING_PATH = 0x0010    // used when we are either flying/swiming or on map w/o mmaps
};

class PathInfo
{
    public:
        PathInfo(Unit const* owner, float destX, float destY, float destZ, bool useStraightPath = false, bool forceDest = false);
        ~PathInfo();

        // return value : true if new path was calculated 
        bool Update(float destX, float destY, float destZ, bool useStraightPath = false, bool forceDest = false);

        void getStartPosition(float &x, float &y, float &z) { x = _startPosition.x; y = _startPosition.y; z = _startPosition.z; }
        void getNextPosition(float &x, float &y, float &z) { x = _nextPosition.x; y = _nextPosition.y; z = _nextPosition.z; }
        void getEndPosition(float &x, float &y, float &z) { x = _endPosition.x; y = _endPosition.y; z = _endPosition.z; }
        void getActualEndPosition(float &x, float &y, float &z) { x = _actualEndPosition.x; y = _actualEndPosition.y; z = _actualEndPosition.z; }

        PathNode getStartPosition() const { return _startPosition; }
        PathNode getNextPosition() const { return _nextPosition; }
        PathNode getEndPosition() const { return _endPosition; }
        PathNode getActualEndPosition() const { return _actualEndPosition; }

        PointPath& getFullPath() { return _pathPoints; }
        PathType getPathType() const { return _type; }

        bool inRange(const PathNode &p1, const PathNode &p2, float r, float h) const;
        float dist3DSqr(const PathNode &p1, const PathNode &p2) const;
    private:

        dtPolyRef       _pathPolyRefs[MAX_PATH_LENGTH];   // array of detour polygon references
        uint32          _polyLength;                      // number of polygons in the path

        PointPath       _pathPoints;       // our actual (x,y,z) path to the target
        uint32          _pointPathPointer; // points to current triple in m_pathPoints - used when dest do not change
        // the triple is the one that is currently being moved toward
        PathType        _type;             // tells what kind of path this is

        bool            _useStraightPath;  // type of path will be generated
        bool            _forceDestination; // when set, we will always arrive at given point

        PathNode        _startPosition;    // {x, y, z} of current location
        PathNode        _nextPosition;     // {x, y, z} of next location on the path
        PathNode        _endPosition;      // {x, y, z} of the destination
        PathNode        _actualEndPosition;  // {x, y, z} of the closest possible point to given destination

        const Unit* const       _sourceUnit;       // the unit that is moving
        const dtNavMesh*        _navMesh;          // the nav mesh
        const dtNavMeshQuery*   _navMeshQuery;     // the nav mesh query used to find the path

        dtQueryFilter _filter;                     // use single filter for all movements, update it when needed

        void setNextPosition(PathNode point) { _nextPosition = point; }
        void setStartPosition(PathNode point) { _startPosition = point; }
        void setEndPosition(PathNode point) { _actualEndPosition = point; _endPosition = point; }
        void setActualEndPosition(PathNode point) { _actualEndPosition = point; }

        void clear()
        {
            _polyLength = 0;
            _pathPoints.clear();
        }

        bool inRangeYZX(const float* v1, const float* v2, float r, float h) const;

        dtPolyRef getPathPolyByPosition(const dtPolyRef *polyPath, uint32 polyPathSize, const float* point, float *distance = NULL);
        dtPolyRef getPolyByLocation(const float* point, float *distance);
        bool HaveTiles(const PathNode &p) const;

        void BuildPolyPath(const PathNode &startPos, const PathNode &endPos);
        void BuildPointPath(const float *startPoint, const float *endPoint);
        void BuildShortcut();

        NavTerrain getNavTerrain(float x, float y, float z);
        void createFilter();
        void updateFilter();

        // smooth path functions
        uint32 fixupCorridor(dtPolyRef* path, uint32 npath, uint32 maxPath, const dtPolyRef* visited, uint32 nvisited);
        bool getSteerTarget(const float* startPos, const float* endPos, float minTargetDist,
        const dtPolyRef* path, uint32 pathSize, float* steerPos, unsigned char& steerPosFlag, dtPolyRef& steerPosRef);
        dtStatus findSmoothPath(const float* startPos, const float* endPos,
        const dtPolyRef* polyPath, uint32 polyPathSize, float* smoothPath, int* smoothPathSize, bool &usedOffmesh, uint32 smoothPathMaxSize);
};
#endif