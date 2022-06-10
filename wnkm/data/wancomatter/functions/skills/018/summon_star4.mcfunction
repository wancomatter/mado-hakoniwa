loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 36
execute store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 45
execute store result entity @s Rotation[1] float 0.01 run scoreboard players add @s subcounter2 3000
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]

execute at @s run tp @s ^ ^ ^-20
