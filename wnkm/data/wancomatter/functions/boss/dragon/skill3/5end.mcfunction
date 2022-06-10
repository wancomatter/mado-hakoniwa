execute if score @s pageChange matches 512.. at @s run tp @s ~ ~ ~ ~5.12 ~
execute if score @s pageChange matches 512.. run scoreboard players remove @s pageChange 512
execute if score @s pageChange matches 256.. at @s run tp @s ~ ~ ~ ~2.56 ~
execute if score @s pageChange matches 256.. run scoreboard players remove @s pageChange 256
execute if score @s pageChange matches 128.. at @s run tp @s ~ ~ ~ ~1.28 ~
execute if score @s pageChange matches 128.. run scoreboard players remove @s pageChange 128
execute if score @s pageChange matches 64.. at @s run tp @s ~ ~ ~ ~0.64 ~
execute if score @s pageChange matches 64.. run scoreboard players remove @s pageChange 64
execute if score @s pageChange matches 32.. at @s run tp @s ~ ~ ~ ~0.32 ~
execute if score @s pageChange matches 32.. run scoreboard players remove @s pageChange 32
execute if score @s pageChange matches 16.. at @s run tp @s ~ ~ ~ ~0.16 ~
execute if score @s pageChange matches 16.. run scoreboard players remove @s pageChange 16
execute if score @s pageChange matches 8.. at @s run tp @s ~ ~ ~ ~0.08 ~
execute if score @s pageChange matches 8.. run scoreboard players remove @s pageChange 8
execute if score @s pageChange matches 4.. at @s run tp @s ~ ~ ~ ~0.04 ~
execute if score @s pageChange matches 4.. run scoreboard players remove @s pageChange 4
execute if score @s pageChange matches 2.. at @s run tp @s ~ ~ ~ ~0.02 ~
execute if score @s pageChange matches 2.. run scoreboard players remove @s pageChange 2
execute if score @s pageChange matches 1.. at @s run tp @s ~ ~ ~ ~0.01 ~
execute if score @s pageChange matches 1.. run scoreboard players remove @s pageChange 1

execute if score @s pageChange matches ..-512 at @s run tp @s ~ ~ ~ ~-5.12 ~
execute if score @s pageChange matches ..-512 run scoreboard players add @s pageChange 512
execute if score @s pageChange matches ..-256 at @s run tp @s ~ ~ ~ ~-2.56 ~
execute if score @s pageChange matches ..-256 run scoreboard players add @s pageChange 256
execute if score @s pageChange matches ..-128 at @s run tp @s ~ ~ ~ ~-1.28 ~
execute if score @s pageChange matches ..-128 run scoreboard players add @s pageChange 128
execute if score @s pageChange matches ..-64 at @s run tp @s ~ ~ ~ ~-0.64 ~
execute if score @s pageChange matches ..-64 run scoreboard players add @s pageChange 64
execute if score @s pageChange matches ..-32 at @s run tp @s ~ ~ ~ ~-0.32 ~
execute if score @s pageChange matches ..-32 run scoreboard players add @s pageChange 32
execute if score @s pageChange matches ..-16 at @s run tp @s ~ ~ ~ ~-0.16 ~
execute if score @s pageChange matches ..-16 run scoreboard players add @s pageChange 16
execute if score @s pageChange matches ..-8 at @s run tp @s ~ ~ ~ ~-0.08 ~
execute if score @s pageChange matches ..-8 run scoreboard players add @s pageChange 8
execute if score @s pageChange matches ..-4 at @s run tp @s ~ ~ ~ ~-0.04 ~
execute if score @s pageChange matches ..-4 run scoreboard players add @s pageChange 4
execute if score @s pageChange matches ..-2 at @s run tp @s ~ ~ ~ ~-0.02 ~
execute if score @s pageChange matches ..-2 run scoreboard players add @s pageChange 2
execute if score @s pageChange matches ..-1 at @s run tp @s ~ ~ ~ ~-0.01 ~
execute if score @s pageChange matches ..-1 run scoreboard players add @s pageChange 1
execute at @s run tp @s ~ 10 ~ ~ 0

data merge storage wnkm:boss {pose:{x:0,y:0,z:5,time:10}}
execute as @e[tag=dragon1_stand_wingL] run function wancomatter:boss/dragon/pose_set
data merge storage wnkm:boss {pose:{x:0,y:0,z:-5,time:10}}
execute as @e[tag=dragon1_stand_wingR] run function wancomatter:boss/dragon/pose_set

scoreboard players set @s pageChange 0
scoreboard players set @s Cooldown3_max 5
execute as @e[tag=dragon_move_target] if score @s playerNumber = @e[tag=dragon1_stand_body,limit=1,sort=nearest] playerNumber run kill @s