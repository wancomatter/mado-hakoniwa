scoreboard players set @s dummy 2
execute unless block ~0.1 ~ ~ #wancomatter:air run scoreboard players set @s dummy 1
execute unless block ~-0.1 ~ ~ #wancomatter:air run scoreboard players set @s dummy -1
execute unless block ~ ~ ~0.1 #wancomatter:air run scoreboard players set @s dummy 3
execute unless block ~ ~ ~-0.1 #wancomatter:air run scoreboard players set @s dummy -3

scoreboard players set @s counter 0
execute if score @s dummy matches 2 run tp @s ~ ~ ~ ~ 90
execute if score @s dummy matches 1 run tp @s ~ ~ ~ 90 0
execute if score @s dummy matches -1 run tp @s ~ ~ ~ -90 0
execute if score @s dummy matches 3 run tp @s ~ ~ ~ 180 0
execute if score @s dummy matches -3 run tp @s ~ ~ ~ 0 0

data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
data modify entity @s Pose.Head[1] set value 0f

execute at @s run tp @s ^ ^ ^0.3

tag @s add traped-icicle
tag @s remove icicle