execute unless entity @e[tag=recoil_work,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["recoil_work"],Duration:3,Age:0}

scoreboard players operation @s recoilY /= #2 counter
execute store result score @s dummy run data get entity @s Rotation[1] 10000
execute store result entity @e[tag=recoil_work,limit=1] Rotation[1] float 0.0001 run scoreboard players operation @s dummy += @s recoilY

scoreboard players operation @s recoilXZ /= #2 counter
execute store result score @s dummy run data get entity @s Rotation[0] 10000
execute store result entity @e[tag=recoil_work,limit=1] Rotation[0] float 0.0001 run scoreboard players operation @s dummy -= @s recoilXZ

execute rotated as @e[tag=recoil_work] run tp @s ~ ~ ~ ~ ~

scoreboard players remove @s recoilTime 1
execute unless score @s recoilTime matches 1.. run function wancomatter:skills/recoil_end