--##POST_FAMILIAR_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_FAMILIAR_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnFamiliarGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_FAMILIAR_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_FAMILIAR_GRID_COLLISION_FILTER_CALLBACK_POST_FAMILIAR_GRID_COLLISION",
    ModCallbacks.MC_FAMILIAR_GRID_COLLISION,
    OnFamiliarGridCollision
)