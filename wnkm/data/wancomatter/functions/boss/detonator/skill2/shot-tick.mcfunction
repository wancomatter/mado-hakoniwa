execute unless block ^ ^ ^0.6 #wancomatter:air run kill @s
tp @s ^ ^ ^0.6
particle minecraft:dust 1 0.8 0.3 0.6 ~ ~ ~ 0.15 0.15 0.15 0 24 normal @a
particle minecraft:dust 1 0.8 0.3 0.6 ~ ~ ~ 0.15 0.15 0.15 0 6 force @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-b1s2shot
execute as @e[distance=..3] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-b1s2shot,distance=..1] run tag @s add b1s2shot-hit
execute as @e[distance=..3] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-b1s2shot,distance=..1] run tag @s add b1s2shot-hit
execute if entity @e[tag=b1s2shot-hit,limit=1] run function wancomatter:boss/detonator/skill2/hit-entity
tag @s remove now-b1s2shot
scoreboard players reset #dummy

execute if score @s counter matches 100.. run kill @s