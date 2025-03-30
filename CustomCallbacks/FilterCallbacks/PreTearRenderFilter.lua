--##PRE_TEAR_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_TEAR_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnTearRender(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_TEAR_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_TEAR_RENDER_FILTER_CALLBACK_PRE_TEAR_RENDER",
    ModCallbacks.MC_PRE_TEAR_RENDER,
    OnTearRender
)