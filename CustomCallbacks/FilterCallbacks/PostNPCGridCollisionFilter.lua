--##POST_NPC_GRID_COLLISION_FILTER
TSIL.__RegisterCustomCallback(
    TSIL.Enums.CustomCallback.POST_NPC_GRID_COLLISION_FILTER,
    TSIL.Enums.CallbackReturnMode.NONE,
    TSIL.Enums.CallbackOptionalArgType.ENTITY_TYPE_VARIANT_SUBTYPE
)

local function OnNPCGridCollision(_, ...)
    return TSIL.__TriggerCustomCallback(TSIL.Enums.CustomCallback.POST_NPC_GRID_COLLISION_FILTER, ...)
end
TSIL.__AddInternalCallback(
    "POST_NPC_GRID_COLLISION_FILTER_CALLBACK_POST_NPC_GRID_COLLISION",
    ModCallbacks.MC_NPC_GRID_COLLISION,
    OnNPCGridCollision
)
