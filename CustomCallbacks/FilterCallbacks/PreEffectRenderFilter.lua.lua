--##PRE_EFFECT_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_EFFECT_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)
local function OnEffectRender(...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.MC_PRE_EFFECT_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback("PRE_EFFECT_RENDER_FILTER_CALLBACK_FILTER", ModCallbacks.MC_PRE_EFFECT_RENDER, OnEffectRender)
