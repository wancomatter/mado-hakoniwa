scoreboard players add @s counter 1
particle minecraft:explosion ~ ~ ~ 0.03 0.03 0.03 0 1 force @a
tag @s add this
execute as @e[distance=..1.5,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
tag @s remove this
execute if data entity @s {OnGround:1b} run scoreboard players set @s counter 300
execute if score @s counter matches 300 as @e[distance=..2.5,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute if score @s counter matches 300 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.6
execute if score @s counter matches 300 run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 25 force @a
execute if score @s counter matches 300 run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 75 normal @a
execute if score @s counter matches 300 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/dusk/skill22/dmg2


execute if score @s counter matches 120.. run kill @s

