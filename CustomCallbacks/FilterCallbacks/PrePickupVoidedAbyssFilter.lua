--##PRE_PICKUP_VOIDED_ABYSS_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_VOIDED_ABYSS_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupVoidedAbyss(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_VOIDED_ABYSS_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_VOIDED_ABYSS_FILTER_CALLBACK_PRE_PICKUP_VOIDED_ABYSS",
    ModCallbacks.MC_PRE_PICKUP_VOIDED_ABYSS,
    OnPickupVoidedAbyss
)