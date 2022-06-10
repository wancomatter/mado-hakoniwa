scoreboard players add #first-operator counter 1
execute if score #first-operator counter matches 1 run scoreboard players set #lobby counter 1
scoreboard players operation @s playerNumber = #first-operator counter
execute unless score @s Cooldown1 matches ..-1 run scoreboard players set @s Cooldown1 -1
execute unless score @s Cooldown2 matches ..-1 run scoreboard players set @s Cooldown2 -1
execute unless score @s Cooldown3 matches ..-1 run scoreboard players set @s Cooldown3 -1
execute unless score @s Cooldown4 matches ..-1 run scoreboard players set @s Cooldown4 -1
execute unless score @s Cooldown5 matches ..-1 run scoreboard players set @s Cooldown5 -1
execute unless score @s Cooldown6 matches ..-1 run scoreboard players set @s Cooldown6 -1
execute unless score @s Cooldown7 matches ..-1 run scoreboard players set @s Cooldown7 -1
execute unless score @s Cooldown8 matches ..-1 run scoreboard players set @s Cooldown8 -1
execute unless score @s Cooldown9 matches ..-1 run scoreboard players set @s Cooldown9 -1
scoreboard players set @s maxHP 1
function wancomatter:general/inventory-changed
scoreboard players set @s HP 2147483647
scoreboard players set @s Mana 2147483647
effect give @s minecraft:health_boost 1 0 true
effect give @s minecraft:regeneration 5 0 true
team leave @s
execute if score #game counter matches 1.. run gamemode spectator @s