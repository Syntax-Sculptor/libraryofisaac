--##POST_FAMILIAR_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_FAMILIAR_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnFamiliarCollision(_, familiar, collider, low)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_FAMILIAR_COLLISION_FILTER, familiar, collider, low)
end
TSIL.__AddInternalCallback(
    "POST_FAMILIAR_COLLISION_FILTER_CALLBACK_POST_FAMILIAR_COLLISION",
    ModCallbacks.MC_POST_FAMILIAR_COLLISION,
    OnFamiliarCollision
)