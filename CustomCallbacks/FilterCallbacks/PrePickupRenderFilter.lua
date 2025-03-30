--##PRE_PICKUP_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupRender(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_RENDER_FILTER_CALLBACK_PRE_PICKUP_RENDER",
    ModCallbacks.MC_PRE_PICKUP_RENDER,
    OnPickupRender
)