scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=tornadoY] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
execute if entity @s[tag=tornadoXZ] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s subcounter
#パーティクル用の角度設定
execute if entity @s[tag=tornadoXZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=tornadoY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^-4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^-4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=tornadoXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.5 0.9 0.5 2 ^ ^ ^4 0 0 0 1 1 force @a

execute if score @s counter matches 25 run function wancomatter:skills/007/active
execute if score @s counter matches 25.. positioned ~ ~1.4 ~ rotated ~-90 ~ run function wancomatter:skills/007/tick-active
execute if score @s counter matches 25.. run scoreboard players operation @s subcounter2 = @s subcounter
execute if score @s counter matches 25.. run scoreboard players operation @s subcounter += @s counter
execute if score @s counter matches 25.. if entity @s[tag=tornadoXZ] store result entity @s Rotation[1] float 1 run scoreboard players get @s subcounter
execute if score @s counter matches 25.. if entity @s[tag=tornadoY] store result entity @s Rotation[0] float 1 run scoreboard players get @s subcounter
execute if score @s counter matches 25.. positioned ~ ~1.4 ~ rotated ~-90 ~ run function wancomatter:skills/007/tick-active
execute if score @s counter matches 25.. run scoreboard players operation @s subcounter = @s subcounter2
execute if score @s counter matches 25.. run execute if entity @e[tag=tornado-hit,limit=1] run function wancomatter:skills/007/hit-entity

execute if score @s counter matches 120.. run kill @s