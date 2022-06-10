loot spawn ~ -10 ~ loot wancomatter:random/250
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 10
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}}]
scoreboard players operation #dummy dummy %= #3 counter
execute if score #dummy dummy matches 2.. run scoreboard players set @s Cooldown1_max 80
execute if score #dummy dummy matches 1 run scoreboard players set @s Cooldown1_max 120
execute if score #dummy dummy matches ..0 run scoreboard players set @s Cooldown1_max 160
tag @s add necro_s0NoUsing
scoreboard players reset #dummy
