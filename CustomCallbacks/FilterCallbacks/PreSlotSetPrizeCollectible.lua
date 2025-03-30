--##PRE_SLOT_SET_PRIZE_COLLECTIBLE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_SLOT_SET_PRIZE_COLLECTIBLE_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotSetPrizeCollectible(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_SLOT_SET_PRIZE_COLLECTIBLE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_SLOT_SET_PRIZE_COLLECTIBLE_FILTER_CALLBACK_PRE_SLOT_SET_PRIZE_COLLECTIBLE",
    ModCallbacks.MC_PRE_SLOT_SET_PRIZE_COLLECTIBLE,
    OnSlotSetPrizeCollectible
)