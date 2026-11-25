loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 36
execute store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 45
execute store result entity @s Rotation[1] float 0.01 run scoreboard players add @s subcounter2 3000
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]

execute at @s run tp @s ^ ^ ^-20
