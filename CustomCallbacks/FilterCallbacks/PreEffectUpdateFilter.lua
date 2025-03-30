--##PRE_EFFECT_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_EFFECT_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnEffectUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_EFFECT_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_EFFECT_UPDATE_FILTER_CALLBACK_PRE_EFFECT_UPDATE",
    ModCallbacks.MC_PRE_EFFECT_UPDATE,
    OnEffectUpdate
)
