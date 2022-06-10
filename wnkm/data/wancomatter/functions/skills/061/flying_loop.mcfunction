particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0.05 0.05 0.05 1 2 normal @a
execute if score #dummy counter matches 6 run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2
scoreboard players remove #dummy counter 1

tag @s add now
execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[dx=0.2,dy=0.2,dz=0.2,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/061/hit-entity-1
tag @s remove now

execute unless block ^ ^ ^0.3 #wancomatter:air run scoreboard players set #dummy counter 0
tp @s ^ ^ ^0.3
execute if score #dummy counter matches 1.. at @s run function wancomatter:skills/061/flying_loop
