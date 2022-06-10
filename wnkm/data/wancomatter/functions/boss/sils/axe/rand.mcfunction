loot spawn ~ -10 ~ loot wancomatter:random/0-360
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute if score #dummy dummy matches ..179 run scoreboard players set @s counter 836
execute unless score #dummy dummy matches ..179 run scoreboard players set @s counter 700
scoreboard players reset #dummy dummy