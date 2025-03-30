--##POST_TEAR_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_TEAR_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnTearCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_TEAR_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_TEAR_COLLISION_FILTER_CALLBACK_POST_TEAR_COLLISION",
    ModCallbacks.MC_POST_TEAR_COLLISION,
    OnTearCollision
)