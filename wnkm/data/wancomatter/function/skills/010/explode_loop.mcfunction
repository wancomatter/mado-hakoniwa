summon area_effect_cloud ~ ~ ~ {Age:0,Duration:21,Radius:0.0f,Tags:["first","procyon_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute as @e[tag=first] store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 36
execute as @e[tag=first] store result entity @s Rotation[1] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 12
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
execute as @e[tag=first] at @s run tp @s ^ ^ ^2.25
tag @e[tag=first] remove first
scoreboard players add @s subcounter 1
execute unless score @s subcounter matches 24.. run function wancomatter:skills/010/explode_loop
