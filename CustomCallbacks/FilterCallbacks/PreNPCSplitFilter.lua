--##PRE_NPC_SPLIT_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_NPC_SPLIT_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnNPCSplit(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_NPC_SPLIT_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_NPC_SPLIT_FILTER_CALLBACK_PRE_NPC_SPLIT",
    ModCallbacks.MC_PRE_NPC_SPLIT,
    OnNPCSplit
)