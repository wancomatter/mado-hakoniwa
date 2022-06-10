execute as @e[tag=b3s21shot,tag=b3s21L] at @s run tp @s ^ ^ ^0.5 ~0.5 ~
execute as @e[tag=b3s21shot,tag=b3s21R] at @s run tp @s ^ ^ ^0.5 ~-0.5 ~
execute positioned 0.5 7.0 0.7 if entity @e[tag=b3s21shot,distance=42..,limit=1] run kill @e[tag=b3s21shot,distance=42..]
scoreboard players operation #dummy teamNumber = @e[tag=dusk,limit=1] teamNumber
execute at @e[tag=b3s21shot] positioned ^ ^-0.8 ^-1 if entity @e[distance=..0.55,scores={maxHP=1..},limit=1] as @e[distance=..0.55,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute at @e[tag=b3s21shot] positioned ^ ^ ^-1 if entity @e[distance=..0.55,scores={maxHP=1..},limit=1] as @e[distance=..0.55,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute at @e[tag=b3s21shot] positioned ^ ^0.8 ^-1 if entity @e[distance=..0.55,scores={maxHP=1..},limit=1] as @e[distance=..0.55,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
#execute at @e[tag=b3s21shot] positioned ^ ^1.6 ^-1 if entity @e[distance=..0.55,scores={maxHP=1..},limit=1] as @e[distance=..0.55,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill21/dmg

