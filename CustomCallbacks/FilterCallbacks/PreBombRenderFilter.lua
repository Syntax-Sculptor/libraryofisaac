--##POST_BOMB_RENDER_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_BOMB_RENDER_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_VARIANT_SUBTYPE
)
local function OnBombRender(...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.MC_PRE_BOMB_RENDER_FILTER, ...)
end
TSIL.__AddInternalCallback("PRE_BOMB_RENDER_FILTER_CALLBACK_PRE_BOMB_RENDER", ModCallbacks.MC_PRE_BOMB_RENDER, OnBombRender)
