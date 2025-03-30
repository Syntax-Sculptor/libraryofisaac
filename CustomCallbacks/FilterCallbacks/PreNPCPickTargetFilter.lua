--##PRE_NPC_PICK_TARGET_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_NPC_PICK_TARGET_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnNPCPickTarget(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_NPC_PICK_TARGET_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_NPC_PICK_TARGET_FILTER_CALLBACK_NPC_PICK_TARGET",
    ModCallbacks.MC_NPC_PICK_TARGET,
    OnNPCPickTarget
)