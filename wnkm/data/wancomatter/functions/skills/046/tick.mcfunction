scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=lightningY] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
execute if entity @s[tag=lightningXZ] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s subcounter
#パーティクル用の角度設定
execute if entity @s[tag=lightningXZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^-4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=lightningXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^-4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=lightningXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=lightningXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=lightningXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^4 0 0 0 1 1 force @a

execute if score @s counter matches 20 run function wancomatter:skills/046/shot_lightning
execute if score @s counter matches 24 run function wancomatter:skills/046/active
execute if score @s counter matches 32 run stopsound @a[distance=..32] neutral minecraft:item.trident.thunder

execute if score @s counter matches 40.. run kill @s