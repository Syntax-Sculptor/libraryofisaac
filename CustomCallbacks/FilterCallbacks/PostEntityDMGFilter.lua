--##POST_ENTITY_TAKE_DMG_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.ENTITY_TAKE_DMG_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)


local function OnEntityDamage(_, entity, amount, flags, source, countdown)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_ENTITY_TAKE_DMG_FILTER, entity, amount, flags, source, countdown)
end
TSIL.__AddInternalCallback(
    "POST_ENTITY_DMG_FILTER_CALLBACK_POST_ENTITY_DMG",
    ModCallbacks.MC_POST_ENTITY_TAKE_DMG,
    OnEntityDamage
)