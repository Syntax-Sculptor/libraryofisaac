--##PRE_FAMILIAR_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_FAMILIAR_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnFamiliarRender(_, familiar, offset)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_FAMILIAR_RENDER_FILTER, familiar, offset)
end
TSIL.__AddInternalCallback(
    "PRE_FAMILIAR_RENDER_FILTER_CALLBACK_PRE_FAMILIAR_RENDER",
    ModCallbacks.MC_PRE_FAMILIAR_RENDER,
    OnFamiliarRender
)