loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 36
execute store result entity @s Rotation[1] float 0.1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 18
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
