particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.5 400 normal @a
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.5 100 force @a
particle minecraft:lava ~ ~ ~ 1 0 1 1 40 normal @a
particle minecraft:lava ~ ~ ~ 1 0 1 1 10 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.8

execute as @e[distance=..2.8,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @a[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill13/hit1

execute if score #difficult counter matches 3..4 run function wancomatter:boss/necro/skill14/0

scoreboard players set @s counter 100
scoreboard players set @e[tag=necro_s13_circle] counter 100
