fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/meele_weapons/neptune
data modify block 0 0 0 Items[{id:"minecraft:trident",tag:{CustomModelData:101}}].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 air