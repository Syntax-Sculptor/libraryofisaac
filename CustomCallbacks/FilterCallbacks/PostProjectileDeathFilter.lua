--##POST_PROJECTILE_DEATH_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_PROJECTILE_DEATH_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnProjectileDeath(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_PROJECTILE_DEATH_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_PROJECTILE_DEATH_FILTER_CALLBACK_POST_PROJECTILE_DEATH",
    ModCallbacks.MC_POST_PROJECTILE_DEATH,
    OnProjectileDeath
)
