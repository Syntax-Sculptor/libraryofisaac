--##POST_KNIFE_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_KNIFE_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnKnifeCollision(_, knife, collider, low)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_KNIFE_COLLISION_FILTER, knife, collider, low)
end
TSIL.__AddInternalCallback(
    "POST_KNIFE_COLLISION_FILTER_CALLBACK_POST_KNIFE_COLLISION",
    ModCallbacks.MC_POST_KNIFE_COLLISION,
    OnKnifeCollision
)