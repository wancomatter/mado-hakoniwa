particle minecraft:dust 1 0 0 1 ^ ^0.3 ^ 0.4 0.4 0.4 1 2 force @a
execute as @e[distance=..2.6,scores={maxHP=1..},tag=!hit-already] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..0.7] run tag @s add hit
execute as @e[distance=..2.6,scores={maxHP=1..},tag=!hit-already] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..0.7] run tag @s add hit
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 100
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill1/dmg

tp @s ^ ^ ^0.4
scoreboard players add @s subcounter 1
execute unless score @s counter matches 100.. if score @s subcounter matches 1..4 at @s run function wancomatter:boss/dusk/skill1/fly