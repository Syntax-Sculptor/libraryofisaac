--##PRE_LASER_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_LASER_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnLaserCollision(_, laser, collider)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_LASER_COLLISION_FILTER, laser, collider)
end
TSIL.__AddInternalCallback(
    "PRE_LASER_COLLISION_FILTER_CALLBACK_PRE_LASER_COLLISION",
    -- Isaac autocomplete extension forgot to include this enum member. This actually exists in REPENTOGON.
    ---@diagnostic disable-next-line: undefined-field 
    ModCallbacks.MC_PRE_LASER_COLLISION,
    OnLaserCollision
)