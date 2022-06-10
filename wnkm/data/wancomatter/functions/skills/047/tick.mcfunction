scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=blizzardY] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
execute if entity @s[tag=blizzardXZ] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s subcounter
#パーティクル用の角度設定
execute if entity @s[tag=blizzardXZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=blizzardY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^-4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardY] positioned ~ ~1.4 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^-4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=blizzardXZ] positioned ~ ~1.4 ~ rotated ~-90 ~ run particle minecraft:dust 0.7 0.9 0.95 2 ^ ^ ^4 0 0 0 1 1 force @a

scoreboard players add @s Mana 1
execute if score @s counter matches 21 run function wancomatter:skills/047/active
execute if score @s counter matches 21.. run function wancomatter:skills/047/tick-active-particle
execute if score @s counter matches 21.. if score @s Mana matches 2.. run scoreboard players set @s Mana 0
execute if score @s counter matches 21.. if entity @e[tag=blizzard-hit,limit=1] run function wancomatter:skills/047/hit-entity

execute if score @s counter matches 65.. run kill @s