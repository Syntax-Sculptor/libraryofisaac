--##GET_FOLLOWER_PRIORITY_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.GET_FOLLOWER_PRIORITY_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnFollowerPriority(_, follower)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.GET_FOLLOWER_PRIORITY_FILTER, follower)
end
TSIL.__AddInternalCallback(
    "GET_FOLLOWER_PRIORITY_FILTER_CALLBACK_GET_FOLLOWER_PRIORITY",
    ModCallbacks.MC_GET_FOLLOWER_PRIORITY,
    OnFollowerPriority
)