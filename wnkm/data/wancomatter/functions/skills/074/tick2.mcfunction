playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.3 1.1
particle minecraft:large_smoke ~ ~ ~ 4.5 4.5 4.5 0.05 40 normal @a
particle minecraft:large_smoke ~ ~ ~ 4.5 4.5 4.5 0.05 10 force @a
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.3 80 normal @a
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.3 20 force @a
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..5.1,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit1
scoreboard players reset #dummy teamNumber
execute if entity @e[tag=hit1,limit=1] run function wancomatter:skills/074/hit1
scoreboard players set @s subcounter 5