summon area_effect_cloud ~ ~ ~ {Tags:["first","procyon_AEC"],Radius:0f,Duration:21,Age:0}
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute as @e[tag=first] store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 36
execute as @e[tag=first] store result entity @s Rotation[1] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 12
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute as @e[tag=first] at @s run tp @s ^ ^ ^2.25
tag @e[tag=first] remove first
scoreboard players add @s subcounter 1
execute unless score @s subcounter matches 24.. run function wancomatter:skills/010/explode_loop