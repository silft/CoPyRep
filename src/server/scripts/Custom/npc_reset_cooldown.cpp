/*##################
# COOLDOWN RESETER
###################*/
#include "ScriptPCH.h"

#define RESET_COOLDOWN "Quero resetar meus cooldowns e bancar o peao pvp na frente de SW e Orgrimmar riariairaiair"
#define RESET_COOLDOWN_ES "Quiero restablecer mi tiempo de reutilización, Brazil > Argentina HAHA"

class npc_reset_cooldown : public CreatureScript
{
public:
	npc_reset_cooldown() : CreatureScript("npc_reset_cooldown") {}

	bool OnGossipHello(Player *pPlayer, Creature *pCreature)
	{
		if (pPlayer->duel || pPlayer->isInCombat() || pPlayer->HasSpellCooldown(42650)) // hehe, prevent Army of the Dead spam :D
		{
			return false;
		}

		const char* localizedEntry;
        switch (pPlayer->GetSession()->GetSessionDbcLocale())
		{
                case LOCALE_esES: localizedEntry = RESET_COOLDOWN_ES; break;
                case LOCALE_enUS: default: localizedEntry = RESET_COOLDOWN;
		}
		pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, localizedEntry, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_HEAL);
		pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetGUID());
        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
	}
	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_HEAL)
		{
			pPlayer->RemoveArenaSpellCooldowns();
			pPlayer->CLOSE_GOSSIP_MENU();
			return true;
		}
		return true;
	}
};

void AddSC_npc_reset_cooldown()
{
	new npc_reset_cooldown;
}