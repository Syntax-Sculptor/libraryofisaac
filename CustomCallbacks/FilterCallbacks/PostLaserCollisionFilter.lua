--##POST_LASER_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_LASER_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnLaserCollisionPost(_, laser, collider)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_LASER_COLLISION_FILTER, laser, collider)
end
TSIL.__AddInternalCallback(
    "POST_LASER_COLLISION_FILTER_CALLBACK_POST_LASER_COLLISION",
    ModCallbacks.MC_POST_LASER_COLLISION,
    OnLaserCollisionPost
)