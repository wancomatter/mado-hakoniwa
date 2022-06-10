loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 4.5
execute rotated as @s run function wancomatter:skills/078/show_area_particle
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 4.5
execute rotated as @s positioned ~ ~0.15 ~ run function wancomatter:skills/078/show_area_particle
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1]

execute if entity @s[distance=..2.9] positioned ~ ~0.3 ~ run function wancomatter:skills/078/show_area_loop