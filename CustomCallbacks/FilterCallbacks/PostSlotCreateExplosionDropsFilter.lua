--##POST_SLOT_CREATE_EXPLOSION_DROPS_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_SLOT_CREATE_EXPLOSION_DROPS_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotCreateExplosionDrops(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_SLOT_CREATE_EXPLOSION_DROPS_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_SLOT_CREATE_EXPLOSION_DROPS_FILTER_CALLBACK_POST_SLOT_CREATE_EXPLOSION_DROPS",
    ModCallbacks.MC_POST_SLOT_CREATE_EXPLOSION_DROPS,
    OnSlotCreateExplosionDrops
)