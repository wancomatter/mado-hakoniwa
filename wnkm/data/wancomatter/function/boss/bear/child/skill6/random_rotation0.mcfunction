loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @s Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]
