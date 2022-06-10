particle minecraft:explosion ^ ^1.5 ^1 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode master @a[distance=..4] ~ ~ ~ 0.3 1
execute as @e[distance=..1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add b1s22shot-hit
execute positioned ~ ~1.0 ~ as @e[distance=..1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add b1s22shot-hit
execute positioned ^ ^ ^0.5 positioned ~ ~1.0 ~ as @e[distance=..1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add b1s22shot-hit
execute positioned ^ ^ ^1.0 positioned ~ ~1.0 ~ as @e[distance=..1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add b1s22shot-hit
scoreboard players add @s dummy 1
execute unless score @s dummy matches 80.. if block ~ 10 ~ #wancomatter:air positioned ^ ^ ^0.90 run function wancomatter:boss/detonator/skill22/thunder-bomb