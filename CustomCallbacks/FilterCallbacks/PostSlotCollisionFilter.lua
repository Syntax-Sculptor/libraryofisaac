--##POST_SLOT_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_COLLISION_FILTER_CALLBACK_POST_SLOT_COLLISION",
    ModCallbacks.MC_POST_SLOT_COLLISION,
    OnSlotCollision
)