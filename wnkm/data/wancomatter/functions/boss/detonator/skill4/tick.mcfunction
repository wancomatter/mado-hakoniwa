scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute unless score #difficult counter matches 2..4 run tp @s ^ ^ ^0.3
execute if score #difficult counter matches 2 run tp @s ^ ^ ^0.4
execute if score #difficult counter matches 3 run tp @s ^ ^ ^0.5
execute if score #difficult counter matches 4 if score @s counter matches ..5 run tp @s ^ ^ ^0.25
execute if score #difficult counter matches 4 if score @s counter matches 6..8 run tp @s ^ ^ ^0.3
execute if score #difficult counter matches 4 if score @s counter matches 9..11 run tp @s ^ ^ ^0.35
execute if score #difficult counter matches 4 if score @s counter matches 12..14 run tp @s ^ ^ ^0.4
execute if score #difficult counter matches 4 if score @s counter matches 15..18 run tp @s ^ ^ ^0.5
execute if score #difficult counter matches 4 if score @s counter matches 19..24 run tp @s ^ ^ ^0.6
execute if score #difficult counter matches 4 if score @s counter matches 25.. run tp @s ^ ^ ^0.7
#particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 1 0.2 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0 6 normal @a
particle minecraft:dust 1 0.2 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a
execute if entity @s[tag=b1s4sound] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.8

execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=b1razeblow,distance=..1] run function wancomatter:boss/detonator/skill4/hit-entity
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=b1razeblow,distance=..1] run function wancomatter:boss/detonator/skill4/hit-entity

scoreboard players reset #dummy teamNumber
execute if score @s counter matches 120.. run kill @s
