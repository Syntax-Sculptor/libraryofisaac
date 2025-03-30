--##PRE_BOMB_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_BOMB_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnBombUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_BOMB_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_BOMB_UPDATE_FILTER_CALLBACK_PRE_BOMB_UPDATE",
    ModCallbacks.MC_PRE_BOMB_UPDATE,
    OnBombUpdate
)
