scoreboard players add @s counter 1
execute if score @s counter matches 100.. run kill @s
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 8 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 2 force @a

scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..9.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s run effect give @s minecraft:glowing 8 0
scoreboard players reset #teamNumber
particle minecraft:firework ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 2 force @a
