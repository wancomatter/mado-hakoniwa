function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 40
scoreboard players remove @s Cooldown5 28
scoreboard players add @s Cooldown6 20
scoreboard players set @s Cooldown7_max 10

loot spawn 0 -10 0 loot wancomatter:random/0-360
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
#乱数幅:2～7

scoreboard players set #dummy counter 0
execute if score #dummy dummy matches ..180 unless score #dummy counter matches 1.. unless score @s dummy matches 3 run scoreboard players set #dummy counter 3
execute if score #dummy dummy matches 181.. unless score #dummy counter matches 1.. unless score @s dummy matches 4 run scoreboard players set #dummy counter 4
execute unless score #dummy counter matches 1.. unless score @s dummy matches 3 run scoreboard players set #dummy counter 3
execute unless score #dummy counter matches 1.. unless score @s dummy matches 4 run scoreboard players set #dummy counter 4

scoreboard players operation @s dummy = #dummy counter
function wancomatter:boss/sils/change_item
