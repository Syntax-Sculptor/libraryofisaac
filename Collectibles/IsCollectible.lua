--- Returns true if the collectible is a glitched item, like because of the effect of TMTRAINER.
---@param collectible EntityPickup
---@return boolean
function TSIL.Collectibles.IsGlitchedCollectible(collectible)
    if collectible.Type ~= EntityType.ENTITY_PICKUP or
    collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error("The IsGlitchedCollectible function was given a non collectible: " .. collectible.Type)
    end

    return collectible.SubType > 4000000000
end


--- Returns true if the collectible type corresponds a modded item.
---@param collectibleType CollectibleType
---@return boolean
function TSIL.Collectibles.IsModdedColllectible(collectibleType)
    return collectibleType >= CollectibleType.NUM_COLLECTIBLES and collectibleType < 4000000000
end


--- Returns true if the collectible is either `ITEM_PASSIVE` or `ITEM_FAMILIAR`.
---@param collectibleType CollectibleType
---@return boolean
function TSIL.Collectibles.IsPassiveCollectible(collectibleType)
    local itemConfigItem = Isaac.GetItemConfig():GetCollectible(collectibleType)

    return itemConfigItem.Type == ItemType.ITEM_PASSIVE or itemConfigItem.Type == ItemType.ITEM_FAMILIAR
end