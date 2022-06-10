particle minecraft:explosion ~ ~ ~ 1.2 1.2 1.2 1 2 force @a
particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 7 normal @a
particle minecraft:flame ~ ~1 ~ 2 2 2 1 10 force @a
particle minecraft:flame ~ ~1 ~ 2 2 2 1 40 normal @a
particle minecraft:flash ~ ~1 ~ 1.2 1.2 1.2 1 1 force @a
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.5 0.5
execute as @e[distance=..3,scores={maxHP=1..},tag=!this] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute rotated ~ 0 run tp @s ^ ^ ^0.75
execute at @s as @e[distance=..3,scores={maxHP=1..},tag=!this,tag=!hit] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute rotated ~ 0 run tp @s ^ ^ ^1.5
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 40
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill3/explode


