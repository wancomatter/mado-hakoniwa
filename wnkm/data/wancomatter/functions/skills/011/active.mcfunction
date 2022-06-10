playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 2
particle flash ~ ~ ~ 1 1 1 1 50 force @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..5.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/011/hit2
scoreboard players reset #dummy teamNumber
