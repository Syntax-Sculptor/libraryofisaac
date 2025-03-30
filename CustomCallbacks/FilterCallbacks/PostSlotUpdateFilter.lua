--##POST_SLOT_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_UPDATE_FILTER_CALLBACK_POST_SLOT_UPDATE",
    ModCallbacks.MC_POST_SLOT_UPDATE,
    OnSlotUpdate
)