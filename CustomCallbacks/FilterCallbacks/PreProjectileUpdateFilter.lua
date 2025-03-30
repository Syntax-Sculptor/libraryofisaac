--##PRE_PROJECTILE_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_PROJECTILE_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnProjectileUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_PROJECTILE_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_PROJECTILE_UPDATE_FILTER_CALLBACK_PRE_PROJECTILE_UPDATE",
    ModCallbacks.MC_PRE_PROJECTILE_UPDATE,
    OnProjectileUpdate
)
