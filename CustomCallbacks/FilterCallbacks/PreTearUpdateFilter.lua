--##PRE_TEAR_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_TEAR_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnTearUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_TEAR_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_TEAR_UPDATE_FILTER_CALLBACK_PRE_TEAR_UPDATE",
    ModCallbacks.MC_PRE_TEAR_UPDATE,
    OnTearUpdate
)