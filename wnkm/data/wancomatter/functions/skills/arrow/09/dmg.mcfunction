scoreboard players remove @s subcounter 15

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..4.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/arrow/09/hit
scoreboard players reset #dummy
