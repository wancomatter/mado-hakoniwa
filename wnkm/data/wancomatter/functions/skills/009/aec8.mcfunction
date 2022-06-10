loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 36
execute store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 89.4427
scoreboard players operation @s subcounter2 *= @s subcounter2
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players add @s subcounter2 70000000
execute store result score @s subcounter run data get entity @s Pos[1] 100
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]

#loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
#execute store result entity @s Rotation[0] float 0.1 run data get entity @e[tag=random,limit=1] Item.tag.rand1 36
#execute store result score @s subcounter2 run data get entity @e[tag=random,limit=1] Item.tag.rand2 35
#execute store result entity @s Rotation[1] float 0.01 run scoreboard players add @s subcounter2 7500
#kill @e[tag=random]
