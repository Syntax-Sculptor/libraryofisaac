--##POST_PICKUP_SHOP_PURCHASE_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_PICKUP_SHOP_PURCHASE_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnPickupShopPurchase(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_PICKUP_SHOP_PURCHASE_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_PICKUP_SHOP_PURCHASE_FILTER_CALLBACK_POST_PICKUP_SHOP_PURCHASE",
    ModCallbacks.MC_POST_PICKUP_SHOP_PURCHASE,
    OnPickupShopPurchase
)