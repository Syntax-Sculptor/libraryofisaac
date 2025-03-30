--##PRE_PICKUP_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_UPDATE_FILTER_CALLBACK_PRE_PICKUP_UPDATE",
    ModCallbacks.MC_PRE_PICKUP_UPDATE,
    OnPickupUpdate
)