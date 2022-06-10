scoreboard players add #dummy subcounter 1
#実際にダメージを与えるのはhit2のみ
execute if score #dummy subcounter matches ..7 if entity @e[tag=!hitx,scores={maxHP=1..},dx=0,dy=0.5,dz=0,limit=1] run tag @e[tag=!hitx,scores={maxHP=1..},dx=0,dy=0.5,dz=0] add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] unless score @s teamNumber = #dummy teamNumber at @s run tag @s add hit2
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] add hitx
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit

particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 0.25 1 1 ~ ~ ~ 0.05 0.05 0.05 1 2 normal @a

execute unless score #dummy subcounter matches 2 unless score #dummy subcounter matches 4 unless score #dummy subcounter matches 6 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
execute if score #dummy subcounter matches ..8 positioned ^ ^ ^0.5 run function wancomatter:skills/061/slash_loop2
