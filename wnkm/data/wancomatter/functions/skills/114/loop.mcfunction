scoreboard players add #dummy counter 1

execute unless score #dummy counter matches 10.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!hitx,scores={maxHP=1..},dx=0,dy=0,dz=0,limit=1] run tag @e[tag=!hitx,scores={maxHP=1..},dx=0,dy=0,dz=0] add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] unless score @s teamNumber = #dummy teamNumber at @s run tag @s add hit2
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] add hitx
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.1 3 normal @a
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 1 force @a
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a


execute unless score #dummy counter matches 12.. positioned ^ ^ ^0.6 run function wancomatter:skills/114/loop