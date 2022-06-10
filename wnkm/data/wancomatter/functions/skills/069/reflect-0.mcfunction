execute if score @s dummy matches -2 positioned ~ ~0.05 ~ positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 3
execute if score @s dummy matches -2 positioned ~ ~-0.05 ~ positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 4
execute if score @s dummy matches -2 positioned ~0.05 ~ ~ positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 1
execute if score @s dummy matches -2 positioned ~-0.05 ~ ~ positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 2
execute if score @s dummy matches -2 positioned ~ ~ ~0.05 positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 5
execute if score @s dummy matches -2 positioned ~ ~ ~-0.05 positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players add @s subcounter 6

execute if score @s dummy matches -1 unless block ~ ~0.05 ~ #wancomatter:air run scoreboard players add @s subcounter 3
execute if score @s dummy matches -1 unless block ~ ~-0.05 ~ #wancomatter:air run scoreboard players add @s subcounter 4
execute if score @s dummy matches -1 unless block ~0.05 ~ ~ #wancomatter:air run scoreboard players add @s subcounter 1
execute if score @s dummy matches -1 unless block ~-0.05 ~ ~ #wancomatter:air run scoreboard players add @s subcounter 2
execute if score @s dummy matches -1 unless block ~ ~ ~0.05 #wancomatter:air run scoreboard players add @s subcounter 5
execute if score @s dummy matches -1 unless block ~ ~ ~-0.05 #wancomatter:air run scoreboard players add @s subcounter 6

execute if score @s subcounter matches 1.. run function wancomatter:skills/069/reflect-1