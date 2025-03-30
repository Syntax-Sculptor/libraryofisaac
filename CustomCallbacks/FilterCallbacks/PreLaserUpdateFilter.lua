--##PRE_LASER_UPDATE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_LASER_UPDATE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnLaserUpdate(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_LASER_UPDATE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_LASER_UPDATE_FILTER_CALLBACK_PRE_LASER_UPDATE",
    ModCallbacks.MC_PRE_LASER_UPDATE,
    OnLaserUpdate
)