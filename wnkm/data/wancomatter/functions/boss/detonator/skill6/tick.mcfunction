execute unless block ^ ^ ^0.7 #wancomatter:air run kill @s
tp @s ^ ^ ^0.7
particle minecraft:dust 1 1 0 0.6 ~ ~ ~ 0.1 0.1 0.1 0 6 normal @a
particle minecraft:dust 1 1 0 0.6 ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-b1s6shot
execute as @e[distance=..3] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-b1s6shot,distance=..0.5] run tag @s add b1s6shot-hit
execute as @e[distance=..3] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ positioned ~ ~0.7 ~ if entity @e[tag=now-b1s6shot,distance=..0.5] run tag @s add b1s6shot-hit
execute as @e[distance=..3] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-b1s6shot,distance=..0.5] run tag @s add b1s6shot-hit
execute if entity @e[tag=b1s6shot-hit,limit=1] run function wancomatter:boss/detonator/skill6/hit-entity
tag @s remove now-b1s6shot
scoreboard players reset #dummy

execute if score @s counter matches 100.. run kill @s