execute at @s if block ^ ^ ^0.16 #wancomatter:air run tp @s ^ ^ ^0.16
execute at @s if block ^ ^ ^0.1 #wancomatter:air run tp @s ^ ^ ^0.1
execute at @s if block ^ ^ ^0.05 #wancomatter:air run tp @s ^ ^ ^0.05
execute at @s if block ^ ^ ^0.025 #wancomatter:air run tp @s ^ ^ ^0.025
execute at @s if block ^ ^ ^0.0125 #wancomatter:air run tp @s ^ ^ ^0.0125
execute at @s if block ^ ^ ^0.00625 #wancomatter:air run tp @s ^ ^ ^0.00625
execute at @s if block ^ ^ ^0.00625 #wancomatter:air run tp @s ^ ^ ^0.00625

execute at @s unless block ~ ~0.01 ~ #wancomatter:air run scoreboard players add @s subcounter 3
execute at @s unless block ~ ~-0.01 ~ #wancomatter:air run scoreboard players add @s subcounter 4
execute at @s unless block ~0.01 ~ ~ #wancomatter:air run scoreboard players add @s subcounter 1
execute at @s unless block ~-0.01 ~ ~ #wancomatter:air run scoreboard players add @s subcounter 2
execute at @s unless block ~ ~ ~0.01 #wancomatter:air run scoreboard players add @s subcounter 5
execute at @s unless block ~ ~ ~-0.01 #wancomatter:air run scoreboard players add @s subcounter 6

execute if score @s subcounter matches 1.. run function wancomatter:boss/bear/child/skill6/reflect-1