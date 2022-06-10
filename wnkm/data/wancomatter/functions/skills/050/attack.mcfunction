playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.5 1
particle minecraft:crit ~ ~1 ~ 2.3 0 2.3 0.5 320 normal @a
particle minecraft:crit ~ ~1 ~ 2.3 0 2.3 0.5 80 force @a
execute rotated ~ 0 positioned ~ ~1 ~ run function wancomatter:skills/050/attack-particle
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..5.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/050/hit-entity
scoreboard players reset #dummy

