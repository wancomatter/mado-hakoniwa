execute as @e[tag=arctic_stand] run function wancomatter:boss/arctic/pose_r_first
scoreboard players add @e[tag=arctic_stand] Cooldown4_max 140
scoreboard players add @e[tag=arctic_stand] Cooldown5_max 10
scoreboard players add @e[tag=arctic_stand] Cooldown6_max 10

execute as @e[tag=arctic_stand] run function wancomatter:boss/arctic/pose_l_first
scoreboard players add @e[tag=arctic_stand] Cooldown4 90
scoreboard players remove @e[tag=arctic_stand] Cooldown5 50
scoreboard players remove @e[tag=arctic_stand] Cooldown6 30

scoreboard players set @e[tag=arctic_stand] subcounter2 10

execute as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [30f,0f,0f]
execute as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [50f,0f,0f]

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.5 1.5
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 110 force @a

execute as @a[distance=..12] positioned as @s if score @s playerNumber = @e[tag=axe_target,limit=1,sort=nearest] playerNumber run tag @s add target
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["vector","target_distance"]}
execute as @e[tag=vector] store result score @s subcounter run data get entity @a[tag=target,limit=1,sort=nearest] Pos[0] 260
execute as @e[tag=vector] store result score @s subcounter2 run data get entity @a[tag=target,limit=1,sort=nearest] Pos[2] 260
execute as @e[tag=vector] run scoreboard players operation @s subcounter -= @e[tag=axe_target,limit=1] subcounter
execute as @e[tag=vector] run scoreboard players operation @s subcounter2 -= @e[tag=axe_target,limit=1] subcounter2
tag @a[tag=target] remove target
execute facing entity @e[tag=vector] feet run tp @s ~ ~ ~ ~ 0
tp @e[tag=arctic_stand,limit=1,sort=nearest] @s
execute positioned ^ ^ ^1.3 as @e[tag=vector] run function wancomatter:operation/distance
scoreboard players operation @e[tag=vector] dummy *= #5 counter
scoreboard players operation @e[tag=vector] dummy /= #3 counter
execute as @e[tag=vector] facing entity @s feet positioned 0.0 0.65 0.0 run tp @s ~ ~ ~ ~ 0
execute as @e[tag=vector] at @s run function wancomatter:operation/0.01tp
execute as @e[tag=vector] run scoreboard players operation @s dummy = @s subcounter
execute as @e[tag=vector] at @s if score @s dummy matches 0.. run tp @s ~ ~ ~ -90 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run tp @s ~ ~ ~ 90 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run scoreboard players operation @s dummy *= #-1 counter
execute as @e[tag=vector] at @s run function wancomatter:operation/0.01tp
execute as @e[tag=vector] run scoreboard players operation @s dummy = @s subcounter2
execute as @e[tag=vector] at @s if score @s dummy matches 0.. run tp @s ~ ~ ~ 0 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run tp @s ~ ~ ~ 180 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run scoreboard players operation @s dummy *= #-1 counter
execute as @e[tag=vector] at @s run function wancomatter:operation/0.01tp
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
