particle minecraft:block gray_wool ~ ~1.1 ~ 0.5 0.1 0.5 1 12 normal @a
particle minecraft:block gray_wool ~ ~1.1 ~ 0.5 0.1 0.5 1 3 force @a
playsound minecraft:entity.zombie.ambient master @a ^ ^ ^2 0.5 0.5

scoreboard players add @s counter 1
execute if block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 80
execute unless block ^ ^2 ^1.0 #wancomatter:air run scoreboard players set @s counter 80
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add user

execute store result score @s subcounter run data get entity @a[tag=user,limit=1] Pos[1] 10
execute unless score @s subcounter = @s subcounter2 run scoreboard players set @s counter 80
scoreboard players operation @s dummy = @s counter
scoreboard players add @s dummy 17
execute if score @s dummy matches 32.. at @s run tp @s ^ ^ ^0.5658
execute if score @s dummy matches 32.. run scoreboard players remove @s dummy 32
execute if score @s dummy matches 16.. at @s run tp @s ^ ^ ^0.4
execute if score @s dummy matches 16.. run scoreboard players remove @s dummy 16
execute if score @s dummy matches 8.. at @s run tp @s ^ ^ ^0.2828
execute if score @s dummy matches 8.. run scoreboard players remove @s dummy 8
execute if score @s dummy matches 4.. at @s run tp @s ^ ^ ^0.2
execute if score @s dummy matches 4.. run scoreboard players remove @s dummy 4
execute if score @s dummy matches 2.. at @s run tp @s ^ ^ ^0.1414
execute if score @s dummy matches 2.. run scoreboard players remove @s dummy 2
execute if score @s dummy matches 1.. at @s run tp @s ^ ^ ^0.1
execute at @s if block ~ ~ ~ #wancomatter:air unless block ~ ~-1 ~ #wancomatter:air run tp @s ~ ~-1 ~
execute at @s positioned ~ ~1 ~ unless block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
tp @a[tag=user] ~ ~ ~
execute store result score @s subcounter2 run data get entity @a[tag=user,limit=1] Pos[1] 10

execute as @e[distance=..1.6,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/066/hit-entity

scoreboard players reset #dummy
execute if score @s counter matches 30.. as @a[tag=user] at @s run function wancomatter:skills/066/end
tag @a[tag=user] remove user
execute if score @s counter matches 30.. run kill @s