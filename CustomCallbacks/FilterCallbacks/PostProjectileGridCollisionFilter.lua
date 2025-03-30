--##POST_PROJECTILE_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_PROJECTILE_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnProjectileGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_PROJECTILE_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_PROJECTILE_GRID_COLLISION_FILTER_CALLBACK_POST_PROJECTILE_GRID_COLLISION",
    ModCallbacks.MC_PROJECTILE_GRID_COLLISION,
    OnProjectileGridCollision
)
