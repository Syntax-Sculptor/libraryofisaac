--##PRE_KNIFE_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_KNIFE_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)

local function OnKnifeRender(_, knife, offset)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_KNIFE_RENDER_FILTER, knife, offset)
end
TSIL.__AddInternalCallback(
    "PRE_KNIFE_RENDER_FILTER_CALLBACK_PRE_KNIFE_RENDER",
    ModCallbacks.MC_PRE_KNIFE_RENDER,
    OnKnifeRender
)