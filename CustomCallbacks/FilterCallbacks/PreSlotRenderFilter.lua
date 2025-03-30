--##PRE_SLOT_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_SLOT_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotRender(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_SLOT_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_SLOT_RENDER_FILTER_CALLBACK_PRE_SLOT_RENDER",
    ModCallbacks.MC_PRE_SLOT_RENDER,
    OnSlotRender
)