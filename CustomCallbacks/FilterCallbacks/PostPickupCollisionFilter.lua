--##POST_PICKUP_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_PICKUP_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_PICKUP_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_PICKUP_COLLISION_FILTER_CALLBACK_POST_PICKUP_COLLISION",
    ModCallbacks.MC_POST_PICKUP_COLLISION,
    OnPickupCollision
)