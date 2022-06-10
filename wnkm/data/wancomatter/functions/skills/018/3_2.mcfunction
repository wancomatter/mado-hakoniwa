execute if score @s Cooldown1 matches 1 run playsound entity.generic.explode master @a ~ ~ ~ 1.5 1
execute if score @s Cooldown1 matches 2 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1
execute if score @s Cooldown1 matches 5 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1
particle minecraft:cloud ^ ^0.5 ^2 0.5 0.5 0.5 0.75 2 force @a
particle minecraft:cloud ^ ^0.5 ^2 0.5 0.5 0.5 0.75 8 normal @a
particle minecraft:explosion ^ ^0.5 ^2 0.0 0.0 0.0 0 1 force @a
particle minecraft:explosion ^ ^0.5 ^2 0.2 0.2 0.2 0 3 normal @a

execute as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit

