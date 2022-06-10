summon area_effect_cloud ~ ~ ~ {Duration:20,Age:0,Tags:["necro_s7_AEC","necro_s7_AEC3","first"],Rotation:[0f,0f]}
loot spawn 0 0 0 loot wancomatter:random/0-360
execute as @e[tag=first] store result entity @s Rotation[0] float 0.01 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 100
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute unless score #difficult counter matches 3..4 run scoreboard players set @e[tag=first] counter 8
execute if score #difficult counter matches 3..4 run scoreboard players set @e[tag=first] counter 12
execute unless score #difficult counter matches 3..4 run scoreboard players set @e[tag=first] subcounter 4500
execute if score #difficult counter matches 3..4 run scoreboard players set @e[tag=first] subcounter 3000
execute as @e[tag=first] store result score @s subcounter2 run data get entity @s Rotation[0] 100
tag @e[tag=first] remove first

