scoreboard players add @s counter 1
scoreboard players add @s subcounter2 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
particle minecraft:dust 0.3 0.1 0.4 2 ^ ^ ^4 0 0 0 1 1 force @a
particle minecraft:dust 0.3 0.1 0.4 2 ^ ^ ^-4 0 0 0 1 1 force @a
particle minecraft:dust 0.3 0.1 0.4 2 ^-4 ^ ^ 0 0 0 1 1 force @a
particle minecraft:dust 0.3 0.1 0.4 2 ^4 ^ ^ 0 0 0 1 1 force @a

execute if score @s counter matches 24 run function wancomatter:boss/necro/skill10/2


execute if score @s counter matches 40.. run kill @s