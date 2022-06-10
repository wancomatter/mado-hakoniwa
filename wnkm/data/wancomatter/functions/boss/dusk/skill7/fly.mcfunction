#particle minecraft:dust 1 0 0 1 ^ ^0.3 ^ 0.4 0.4 0.4 1 2 force @a
particle minecraft:end_rod ~ ~ ~ 0.03 0.03 0.03 0 1 normal @a
execute if score @s subcounter matches 0 run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s subcounter matches 0 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[distance=..3.5,scores={maxHP=1..},tag=!hit-already] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.7] run tag @s add hit
execute as @e[distance=..3.5,scores={maxHP=1..},tag=!hit-already] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.7] run tag @s add hit
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 100
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill7/dmg

execute unless score #difficult counter matches 2..4 run tp @s ^ ^ ^0.3
execute if score #difficult counter matches 2 run tp @s ^ ^ ^0.4
execute if score #difficult counter matches 3 run tp @s ^ ^ ^0.45
execute if score #difficult counter matches 4 run tp @s ^ ^ ^0.55
scoreboard players add @s subcounter 1
execute unless score @s counter matches 100.. if score @s subcounter matches 1..2 at @s run function wancomatter:boss/dusk/skill7/fly