# 羽のPose制御
data merge storage wnkm:boss {pose:{x:0,y:0,z:20,time:10}}
execute as @e[tag=dragon1_stand_wingL] run function wancomatter:boss/dragon/pose_set
data merge storage wnkm:boss {pose:{x:0,y:0,z:-20,time:10}}
execute as @e[tag=dragon1_stand_wingR] run function wancomatter:boss/dragon/pose_set
execute at @s run tp @s ~ ~ ~ ~ 0

# 180度回転の為のスコア取得
execute store result score #dragonBoss Cooldown1 run data get entity @s Rotation[0] 100
execute if score @s Cooldown3_max matches 2 run scoreboard players set #dragonBoss Cooldown2 9000
execute if score @s Cooldown3_max matches 3 run scoreboard players set #dragonBoss Cooldown2 -9000
scoreboard players operation #dragonBoss Cooldown1 += #dragonBoss Cooldown2
tellraw wnkm {"score":{"name":"#dragonBoss","objective":"Cooldown1"}}
execute if score #dragonBoss Cooldown1 matches 0.. run scoreboard players set @s pageChange 18000
execute if score #dragonBoss Cooldown1 matches 0.. run scoreboard players operation @s pageChange -= #dragonBoss Cooldown1
execute unless score #dragonBoss Cooldown1 matches 0.. run scoreboard players set @s pageChange -18000
execute unless score #dragonBoss Cooldown1 matches 0.. run scoreboard players operation @s pageChange -= #dragonBoss Cooldown1
#execute unless score #dragonBoss Cooldown1 matches 0.. if score @s Cooldown3_max matches 2 run scoreboard players set @s pageChange -18000
#execute unless score #dragonBoss Cooldown1 matches 0.. if score @s Cooldown3_max matches 2 run scoreboard players operation @s pageChange -= #dragonBoss Cooldown1
#execute unless score #dragonBoss Cooldown1 matches 0.. if score @s Cooldown3_max matches 3 run scoreboard players set @s pageChange -18000
#execute unless score #dragonBoss Cooldown1 matches 0.. if score @s Cooldown3_max matches 3 run scoreboard players operation @s pageChange -= #dragonBoss Cooldown1

scoreboard players set @s Cooldown3_max 4
