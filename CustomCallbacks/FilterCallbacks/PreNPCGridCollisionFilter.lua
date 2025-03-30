--##PRE_NPC_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.PRE_NPC_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.SKIP_NEXT,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnNPCGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.PRE_NPC_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "PRE_NPC_GRID_COLLISION_FILTER_CALLBACK_PRE_NPC_GRID_COLLISION",
    ModCallbacks.MC_PRE_NPC_GRID_COLLISION,
    OnNPCGridCollision
)
