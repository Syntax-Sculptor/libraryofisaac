--##POST_TEAR_DEATH_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_TEAR_DEATH_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnTearDeath(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_TEAR_DEATH_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_TEAR_DEATH_FILTER_CALLBACK_POST_TEAR_DEATH",
    ModCallbacks.MC_POST_TEAR_DEATH,
    OnTearDeath
)