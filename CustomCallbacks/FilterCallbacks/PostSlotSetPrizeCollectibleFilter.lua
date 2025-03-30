--##POST_SLOT_SET_PRIZE_COLLECTIBLE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_SET_PRIZE_COLLECTIBLE_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotSetPrizeCollectible(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_SET_PRIZE_COLLECTIBLE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_SET_PRIZE_COLLECTIBLE_FILTER_CALLBACK_POST_SLOT_SET_PRIZE_COLLECTIBLE",
    ModCallbacks.MC_POST_SLOT_SET_PRIZE_COLLECTIBLE,
    OnSlotSetPrizeCollectible
)