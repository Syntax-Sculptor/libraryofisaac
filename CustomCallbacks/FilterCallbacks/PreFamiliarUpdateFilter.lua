--##PRE_FAMILIAR_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_FAMILIAR_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnFamiliarUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_FAMILIAR_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_FAMILIAR_UPDATE_FILTER_CALLBACK_PRE_FAMILIAR_UPDATE",
    ModCallbacks.MC_PRE_FAMILIAR_UPDATE,
    OnFamiliarUpdate
)
