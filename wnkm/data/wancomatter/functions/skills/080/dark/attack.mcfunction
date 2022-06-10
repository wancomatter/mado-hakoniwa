playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.2
#particle minecraft:enchanted_hit ~ ~1 ~ 2.3 0 2.3 0.5 320 normal @a
#particle minecraft:enchanted_hit ~ ~1 ~ 2.3 0 2.3 0.5 80 force @a
execute rotated ~ 0 positioned ~ ~1 ~ run function wancomatter:skills/080/dark/attack-particle
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..5.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/080/dark/hit-entity
scoreboard players reset #dummy

