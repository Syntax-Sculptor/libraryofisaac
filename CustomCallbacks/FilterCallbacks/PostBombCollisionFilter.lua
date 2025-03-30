--##POST_BOMB_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_BOMB_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnBombCollision(_, bomb, collider, low)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_BOMB_COLLISION_FILTER, bomb, collider, low)
end

TSIL.__AddInternalCallback("POST_BOMB_COLLISION_FILTER_CALLBACK_POST_BOMB_COLLISION", ModCallbacks.MC_POST_BOMB_COLLISION, OnBombCollision)
