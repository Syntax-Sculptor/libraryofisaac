# Library Of Isaac Repentogon Changelog

## Additions
- Copying and serializing colors now supports all the colorize attributes.
- Added `POST_SLOT_STATE_CHANGED`.
- Added more grid entity specific functions for the new grid entity types.
- Added `TSIL.IsaacAPIClass.IsColorModifier` and `TSIL.IsaacAPIClass.IsSlot`.
- Added `TSIL.CustomCallback.POST_ENTITY_TAKE_DMG_FILTER`.
- Added `TSIL.CustomCallback.POST_BOMB_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_BOMB_RENDER_FILTER`.
- Added `TSIL.CustomCallback.PRE_EFFECT_RENDER_FILTER`.
- Added `TSIL.CustomCallback.POST_FAMILIAR_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_FAMILIAR_RENDER_FILTER`.
- Added `TSIL.CustomCallback.GET_FOLLOWER_PRIORITY_FILTER`.
- Added `TSIL.CustomCallback.POST_KNIFE_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_KNIFE_RENDER_FILTER`.
- Added `TSIL.CustomCallback.PRE_LASER_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_LASER_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_NPC_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.NPC_PICK_TARGET_FILTER`.
- Added `TSIL.CustomCallback.POST_NPC_DARK_RED_CHAMPION_REGEN_FILTER`.
- Added `TSIL.CustomCallback.EVALUATE_FAMILIAR_MULTIPLIER_FILTER`.
- Added `TSIL.CustomCallback.PRE_NPC_RENDER_FILTER`.
- Added `TSIL.CustomCallback.PRE_NPC_SPLIT_FILTER`.
- Added `TSIL.CustomCallback.POST_PICKUP_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_COMPOSTED_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_RENDER_FILTER`.
- Added `TSIL.CustomCallback.POST_PICKUP_SHOP_PURCHASE_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_VOIDED_ABYSS_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_VOIDED_FILTER`.
- Added `TSIL.CustomCallback.PRE_SLOT_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_SLOT_CREATE_EXPLOSION_DROPS_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_CREATE_EXPLOSION_DROPS_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_INIT_FILTER`.
- Added `TSIL.CustomCallback.PRE_SLOT_RENDER_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_RENDER_FILTER`.
- Added `TSIL.CustomCallback.PRE_SLOT_SET_PRIZE_COLLECTIBLE_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_SET_PRIZE_COLLECTIBLE_FILTER`.
- Added `TSIL.CustomCallback.PRE_SLOT_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.POST_SLOT_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.POST_TEAR_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_TEAR_RENDER_FILTER`.
- Added `TSIL.CustomCallback.PRE_TEAR_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_TEAR_COLLISION_GRID_FILTER`.
- Added `TSIL.CustomCallback.PRE_FAMILIAR_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_FAMILIAR_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_BOMB_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_BOMB_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_PICKUP_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_PROJECTILE_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_PROJECTILE_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.PRE_NPC_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_NPC_GRID_COLLISION_FILTER`.
- Added `TSIL.CustomCallback.POST_PROJECTILE_DEATH_FILTER`.
- Added `TSIL.CustomCallback.POST_TEAR_DEATH_FILTER`.
- Added `TSIL.CustomCallback.PRE_TEAR_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_FAMILIAR_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_BOMB_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_PICKUP_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_KNIFE_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_PROJECTILE_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_LASER_UPDATE_FILTER`.
- Added `TSIL.CustomCallback.PRE_EFFECT_UPDATE_FILTER`.

## Fixes

- `TSIL.Collectibles.SetCollectibleGlitched` no longer temporarily gives TMTrainer to the player.
- `TSIL.EntitySpecific.GetSlots` now returns an `EntitySlot` table.
- `TSIL.EntitySpecific.SpawnSlot` now returns an `EntitySlot`.

## Enums
The following enums have been renamed to not conflict with ones added in Repentogon:
- `HealthType` -> `PlayerHeartType`.

The following enums have been added in Repentogon:
- `BossID` -> `BossType`.
- `DebugMode` -> `DebugFlag`.
- `Dimension` -> `Dimension`.
- `PoopGridEntityVariant` -> `GridPoopVariant`.
- `PressurePlateVariant` -> `PressurePlateVariant`.
- `LineCheckMode` -> `LineCheckMode`.
- `ProjectilesMode` -> `ProjectileMode`.
- `SlotVariant` -> `SlotVariant`.
- `KnifeVariant` -> `KnifeVariant`.

## Removed
- `TSIL.Charge.GetMaxCharge()` can be replaced by `player:GetActiveMaxCharge()` in some cases. You can now use `TSIL.Charge.GetEffectiveMaxCharge()` if you still want to account for The Battery.
- `TSIL.Charge.GetTotalCharge()` has been replaced by `player:GetTotalActiveCharge()`.
- All grid specific callbacks are now properly implemented.
- `POST_PLAYER_COLLECTIBLE_REMOVED` has been replaced by `MC_POST_TRIGGER_COLLECTIBLE_REMOVED`.
- `POST_PLAYER_COLLECTIBLE_ADDED` has been replaced by `MC_POST_ADD_COLLECTIBLE`.
- `POST_PURCHASE` has been replaced by `MC_POST_PICKUP_SHOP_PURCHASE`.
- `POST_SLOT_UPDATE`, `POST_SLOT_RENDER`, `POST_SLOT_INIT` and `PRE_SLOT_COLLISION` have all been properly implemented.
- `TSIL.Dimensions.GetDimension()` has been replaced by `Level:GetDimension()`.
- Mentions of grid entity crawlspaces have been renamed to stairs to match the new `GridEntityStairs`.
- `TSIL.Pills.GetPillEffectName()` is not neccessary now due to Repentogon exposing localization functions.
- `TSIL.Players.DoesAnyPlayerHasItem()` has been replaced by `PlayerManager.AnyoneHasCollectible(Collectible)`.
- `TSIL.Players.DoesAnyPlayerHasTrinket()` has been replaced by `PlayerManager.AnyoneHasTrinket(Trinket)`.
- `TSIL.Players.GetPlayerInventory()` has been replaced by `EntityPlayer:GetHistory()`.
- `TSIL.Players.AddSmeltedTrinket()` has been replaced by `EntityPlayer:AddSmeltedTrinket(Trinket, FirstTimePickingUp)`.
- `TSIL.Players.GetCharacterDeathAnimationName()` has been replaced by `EntityPlayer:GetDeathAnimName()`.
- `TSIL.Players.GetPlayers()` has been replaced by `PlayerManager.GetPlayers()`.
- `TSIL.Players.RegisterCharacterHealthConversion()` has been replaced by `MC_PLAYER_GET_HEALTH_TYPE`.
- `TSIL.Run.CanRunUnlockAchievements` has been replaced by `Game:AchievementUnlocksDisallowed()`
- `TSIL.Collectibles.IsBlindCollectible` has been replaced by `EntityPickup:IsBlind()`.
- `TSIL.Collectibles.TryRemoveCollectible` has been replaced by `EntityPickup:TryRemoveCollectible()`.
- `TSIL.Debug.GetTime` has been removed due to the socket library not working in REPENTOGON. Use `Isaac.GetTime()` instead.