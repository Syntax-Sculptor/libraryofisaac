--##PRE_PICKUP_COMPOSTED_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_COMPOSTED_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupComposted(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_COMPOSTED_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_COMPOSTED_FILTER_CALLBACK_PRE_PICKUP_COMPOSTED",
    ModCallbacks.MC_PRE_PICKUP_COMPOSTED,
    OnPickupComposted
)

