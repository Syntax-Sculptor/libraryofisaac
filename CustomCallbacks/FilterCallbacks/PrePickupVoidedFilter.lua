--##PRE_PICKUP_VOIDED_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_VOIDED_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupVoided(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_VOIDED_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_VOIDED_FILTER_CALLBACK_PRE_PICKUP_VOIDED",
    ModCallbacks.MC_PRE_PICKUP_VOIDED,
    OnPickupVoided
)