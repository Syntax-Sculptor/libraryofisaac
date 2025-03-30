--##PRE_SLOT_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_SLOT_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_SLOT_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_SLOT_UPDATE_FILTER_CALLBACK_PRE_SLOT_UPDATE",
    ModCallbacks.MC_PRE_SLOT_UPDATE,
    OnSlotUpdate
)