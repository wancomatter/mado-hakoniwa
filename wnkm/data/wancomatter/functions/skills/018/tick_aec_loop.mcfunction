tp @s ^ ^ ^1
particle minecraft:end_rod ^ ^ ^0.5 0 0 0 0 1 force @a
particle minecraft:firework ^ ^ ^0.5 0 0 0 0 1 force @a

execute if score @s Mana matches ..1 run particle minecraft:end_rod ^ ^ ^1 0 0 0 0.02 3 normal @a

execute if score @s Mana matches 2..4 run particle minecraft:end_rod ^ ^ ^1 0.5 0.5 0.5 0.10 1 force @a
execute if score @s Mana matches 2..4 run particle minecraft:end_rod ^ ^ ^1 0.5 0.5 0.5 0.10 3 normal @a

execute if score @s Mana matches 5..7 run particle minecraft:end_rod ^ ^ ^1 1.0 1.0 1.0 0.15 4 normal @a
execute if score @s Mana matches 5..6 run particle minecraft:dust 1 0.270 0.204 1.2 ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s Mana matches 5..6 run particle minecraft:dust 1 0.270 0.204 1.2 ~ ~ ~ 0.2 0.2 0.2 1 5 normal @a

execute if score @s Mana matches 8.. run particle minecraft:end_rod ^ ^ ^1 1.2 1.2 1.2 0.20 4 normal @a
execute if score @s Mana matches 7..8 run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s Mana matches 7 run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 3 normal @a
execute if score @s Mana matches 8 run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 6 normal @a

#execute if score @s Mana matches 9 run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 3 normal @a

execute if score @s Mana matches ..1 as @e[distance=..1.7,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if score @s Mana matches 2..4 as @e[distance=..2.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if score @s Mana matches 5..7 as @e[distance=..2.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if score @s Mana matches 8 as @e[distance=..2.7,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if score @s counter matches 40 if score @s Mana matches 9.. as @e[distance=..3.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if score @s counter matches 40 if score @s Mana matches 9.. run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
