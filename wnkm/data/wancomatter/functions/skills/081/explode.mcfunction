playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.6
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 4 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 160 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 40 force @a

execute store result score #dummy Cooldown1_max run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2_max run data get entity @s Pos[1] 10
execute store result score #dummy Cooldown3_max run data get entity @s Pos[2] 10
tag @s add now
execute as @e[distance=..6,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:skills/081/hit
tag @s remove now
scoreboard players reset #dummy

kill @s
