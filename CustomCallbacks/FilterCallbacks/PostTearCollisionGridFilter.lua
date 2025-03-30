--##POST_TEAR_COLLISION_GRID_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_TEAR_COLLISION_GRID_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnTearCollisionGrid(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_TEAR_COLLISION_GRID_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_TEAR_COLLISION_GRID_FILTER_CALLBACK_POST_TEAR_COLLISION_GRID",
    ModCallbacks.MC_TEAR_GRID_COLLISION,
    OnTearCollisionGrid
)