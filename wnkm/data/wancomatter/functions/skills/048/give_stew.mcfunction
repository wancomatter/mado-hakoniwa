playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1.3 2
execute anchored eyes run particle minecraft:witch ^ ^1 ^ 0.1 0.2 0.1 1 60 normal @a
execute anchored eyes run particle minecraft:witch ^ ^1 ^ 0.1 0.2 0.1 1 15 force @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 25 force @a
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:skills/gamble_stew
data modify block 0 0 0 Items[{Slot:0b}].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air