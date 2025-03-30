--##POST_SLOT_INIT_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_INIT_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotInit(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_INIT_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_INIT_FILTER_CALLBACK_POST_SLOT_INIT",
    ModCallbacks.MC_POST_SLOT_INIT,
    OnSlotInit
)