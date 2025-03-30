--##POST_SLOT_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotRender(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_RENDER_FILTER_CALLBACK_POST_SLOT_RENDER",
    ModCallbacks.MC_POST_SLOT_RENDER,
    OnSlotRender
)