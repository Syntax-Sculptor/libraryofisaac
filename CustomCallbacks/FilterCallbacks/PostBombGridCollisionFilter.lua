--##POST_BOMB_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_BOMB_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnBombGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_BOMB_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_BOMB_GRID_COLLISION_FILTER_CALLBACK_POST_BOMB_GRID_COLLISION",
    ModCallbacks.MC_BOMB_GRID_COLLISION,
    OnBombGridCollision
)