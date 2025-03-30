--##PRE_PICKUP_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PICKUP_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PICKUP_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PICKUP_GRID_COLLISION_FILTER_CALLBACK_PRE_PICKUP_GRID_COLLISION",
    ModCallbacks.MC_PRE_PICKUP_GRID_COLLISION,
    OnPickupGridCollision
)