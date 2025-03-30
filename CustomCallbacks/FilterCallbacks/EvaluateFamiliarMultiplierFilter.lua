--##EVALUATE_FAMILIAR_MULTIPLIER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.EVALUATE_FAMILIAR_MULTIPLIER_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnFamiliarMultiplier(_, familiar, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.EVALUATE_FAMILIAR_MULTIPLIER_FILTER, familiar, ...)
end
TSIL.__AddInternalCallback(
    "EVALUATE_FAMILIAR_MULTIPLIER_FILTER_CALLBACK_EVALUATE_FAMILIAR_MULTIPLIER",
    ModCallbacks.MC_EVALUATE_FAMILIAR_MULTIPLIER,
    OnFamiliarMultiplier
)