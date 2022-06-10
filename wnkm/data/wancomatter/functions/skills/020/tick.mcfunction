particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.6
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now-windcut
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add windcut-hit
scoreboard players operation @s dummy = @s subcounter
execute if score @s dummy matches 32.. at @s run tp @s ^ ^ ^0.96
execute if score @s dummy matches 32.. at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add windcut-hit
execute if score @s dummy matches 32.. run scoreboard players remove @s dummy 32
execute if score @s dummy matches 16.. at @s run tp @s ^ ^ ^0.48
execute if score @s dummy matches 16.. run scoreboard players remove @s dummy 16
execute if score @s dummy matches 08.. at @s run tp @s ^ ^ ^0.24
execute if score @s dummy matches 08.. run scoreboard players remove @s dummy 08
execute if score @s dummy matches 04.. at @s run tp @s ^ ^ ^0.12
execute if score @s dummy matches 04.. run scoreboard players remove @s dummy 04
execute if score @s dummy matches 02.. at @s run tp @s ^ ^ ^0.06
execute if score @s dummy matches 02.. run scoreboard players remove @s dummy 02
execute if score @s dummy matches 01.. at @s run tp @s ^ ^ ^0.03
execute if score @s dummy matches 01.. run scoreboard players remove @s dummy 01
execute at @s run tp @s ^ ^ ^0.3
execute if entity @e[tag=windcut-hit,limit=1] at @s run function wancomatter:skills/020/hit-entity
tag @s remove now-windcut

execute if score @s subcounter matches 32.. unless block ^ ^ ^0.96 #wancomatter:air run kill @s
execute at @s unless block ^ ^ ^ #wancomatter:air run kill @s
scoreboard players reset #dummy
execute if score @s counter > @s subcounter run kill @s