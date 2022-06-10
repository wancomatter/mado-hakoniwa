execute as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s run tag @s add fireball-b-hit
execute as @e[distance=..3.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber at @s run tag @s add fireball-b-hit
execute if entity @e[tag=fireball-b-hit,limit=1] store result score #dummy Cooldown1_max run data get entity @s Pos[0] 10
execute if entity @e[tag=fireball-b-hit,limit=1] store result score #dummy Cooldown2_max run data get entity @s Pos[1] 10
execute if entity @e[tag=fireball-b-hit,limit=1] store result score #dummy Cooldown3_max run data get entity @s Pos[2] 10
execute if entity @e[tag=fireball-b-hit,limit=1] as @e[tag=fireball-b-hit] at @s run function wancomatter:skills/008/hit-entity-b
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 2 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 80 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 20 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
scoreboard players set @s counter 101