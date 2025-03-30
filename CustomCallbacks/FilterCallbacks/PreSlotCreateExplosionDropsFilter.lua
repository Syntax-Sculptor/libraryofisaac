--##PRE_SLOT_CREATE_EXPLOSION_DROPS_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_SLOT_CREATE_EXPLOSION_DROPS_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnSlotCreateExplosionDrops(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_SLOT_CREATE_EXPLOSION_DROPS_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_SLOT_CREATE_EXPLOSION_DROPS_FILTER_CALLBACK_PRE_SLOT_CREATE_EXPLOSION_DROPS",
    ModCallbacks.MC_PRE_SLOT_CREATE_EXPLOSION_DROPS,
    OnSlotCreateExplosionDrops
)