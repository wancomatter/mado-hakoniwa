execute if entity @s[tag=b3s4sound] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 2
execute if entity @s[tag=b3magmaL] run particle minecraft:flash ~ ~0.5 ~ 0 0 0 1 1 force @a
execute if entity @s[tag=b3s4sound] as @e[tag=dusk] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.24d
execute store result score @s subcounter2 run data get entity @s Rotation[0] 100
loot spawn 0 0 0 loot wancomatter:random/2.-50_49
execute if score #difficult counter matches 2 store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 8
execute if score #difficult counter matches 3 store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 16
execute if score #difficult counter matches 4 store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 24
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s subcounter2 += @s dummy
