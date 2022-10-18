scoreboard players add @s counter1 1
scoreboard players operation @s counter2 = @s counter1

execute if score @s counter2 matches 16.. at @s run tp @s ^ ^ ^0.64
execute if score @s counter2 matches 16.. run scoreboard players remove @s counter2 16
execute if score @s counter2 matches 08.. at @s run tp @s ^ ^ ^0.32
execute if score @s counter2 matches 08.. run scoreboard players remove @s counter2 08
execute if score @s counter2 matches 04.. at @s run tp @s ^ ^ ^0.16
execute if score @s counter2 matches 04.. run scoreboard players remove @s counter2 04
execute if score @s counter2 matches 02.. at @s run tp @s ^ ^ ^0.08
execute if score @s counter2 matches 02.. run scoreboard players remove @s counter2 02
execute if score @s counter2 matches 01.. at @s run tp @s ^ ^ ^0.04

particle minecraft:cloud ^ ^1.6 ^-2 ^ ^ ^-100000 0.000005 0 force @a

execute if entity @s[tag=flying_shield_core] run function wancomatter:skills/118/check_dmg
