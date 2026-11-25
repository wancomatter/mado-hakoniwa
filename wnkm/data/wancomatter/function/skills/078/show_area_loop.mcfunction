loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 4.5
execute rotated as @s run function wancomatter:skills/078/show_area_particle
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 4.5
execute rotated as @s positioned ~ ~0.15 ~ run function wancomatter:skills/078/show_area_particle
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1]

execute if entity @s[distance=..2.9] positioned ~ ~0.3 ~ run function wancomatter:skills/078/show_area_loop
