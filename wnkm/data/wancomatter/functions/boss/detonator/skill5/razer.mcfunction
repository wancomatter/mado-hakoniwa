scoreboard players add #dummy subcounter 1

execute unless block ^ ^ ^0.4 #wancomatter:air run scoreboard players set #dummy subcounter 200
tp @s ^ ^ ^0.4
particle minecraft:dust 1 1 0 1.5 ~ ~ ~ 0.2 0.2 0.2 1 8 normal @a
particle minecraft:dust 1 1 0 1.5 ~ ~ ~ 0.2 0.2 0.2 1 2 force @a

execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-b1s5razer,distance=..2.3,limit=1] run tag @s add b1s5razer-hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-b1s5razer,distance=..2.3,limit=1] run tag @s add b1s5razer-hit

execute if score #dummy subcounter matches 200 run function wancomatter:boss/detonator/skill5/impact
execute unless score #dummy subcounter matches 200.. at @s run function wancomatter:boss/detonator/skill5/razer