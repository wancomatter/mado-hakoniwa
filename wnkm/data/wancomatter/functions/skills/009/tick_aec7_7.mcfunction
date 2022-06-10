tag @s add it
execute as @e[distance=..10.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s add hit
execute at @s as @e[distance=..10.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/009/hit
tag @s remove it
