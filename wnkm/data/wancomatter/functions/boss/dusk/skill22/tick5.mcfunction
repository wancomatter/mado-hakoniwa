scoreboard players add @s counter 1

particle minecraft:end_rod ~ ~0.5 ~ 0.03 0.03 0.03 0 1 normal @a
particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1 force @a
particle minecraft:flash ~ ~1.5 ~ 0.3 0.3 0.3 0 2 normal @a
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1 force @a
tag @s add this
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill22/dmg2
tag @s remove this
tp @s ^ ^ ^1
execute if score @s counter matches 50.. run kill @s