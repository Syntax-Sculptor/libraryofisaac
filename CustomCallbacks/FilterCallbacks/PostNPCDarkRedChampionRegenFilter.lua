--##POST_NPC_DARK_RED_CHAMPION_REGEN_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_NPC_DARK_RED_CHAMPION_REGEN_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnNPCDarkRedChampionRegen(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_NPC_DARK_RED_CHAMPION_REGEN_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_NPC_DARK_RED_CHAMPION_REGEN_FILTER_CALLBACK_POST_NPC_DARK_RED_CHAMPION_REGEN",
    ModCallbacks.MC_POST_NPC_DARK_RED_CHAMPION_REGEN,
    OnNPCDarkRedChampionRegen
)
