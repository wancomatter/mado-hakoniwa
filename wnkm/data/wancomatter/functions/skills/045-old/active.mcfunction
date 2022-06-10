particle minecraft:lava ~ ~1 ~ 2 1 2 1 52 normal @a
particle minecraft:lava ~ ~1 ~ 2 1 2 1 13 force @a
particle minecraft:explosion ~ ~1.5 ~ 3 2 3 1 40 normal @a
particle minecraft:explosion ~ ~1.5 ~ 3 2 3 1 10 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/045/hit-entity
scoreboard players reset #dummy
kill @e[distance=..2,sort=nearest,limit=1,tag=firecircle]
scoreboard players set @s counter 1000