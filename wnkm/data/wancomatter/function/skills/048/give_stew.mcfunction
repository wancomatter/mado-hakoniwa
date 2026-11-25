playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1.3 2
execute anchored eyes run particle minecraft:witch ^ ^1 ^ 0.1 0.2 0.1 1 60 normal @a
execute anchored eyes run particle minecraft:witch ^ ^1 ^ 0.1 0.2 0.1 1 15 force @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 25 force @a
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:skills/gamble_stew
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
setblock 1024 0 1024 air
