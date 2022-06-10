execute as @e[tag=arctic_stand] run function wancomatter:boss/arctic/pose_r_first
scoreboard players add @e[tag=arctic_stand] Cooldown4_max 10
scoreboard players add @e[tag=arctic_stand] Cooldown5_max 20
scoreboard players add @e[tag=arctic_stand] Cooldown6_max 5

execute as @e[tag=arctic_stand] run function wancomatter:boss/arctic/pose_l_first
scoreboard players add @e[tag=arctic_stand] Cooldown4 40
scoreboard players remove @e[tag=arctic_stand] Cooldown5 30
scoreboard players remove @e[tag=arctic_stand] Cooldown6 20

scoreboard players set @e[tag=arctic_stand] subcounter2 10

execute as @e[tag=arctic_stand] run data remove entity @s Pose.LeftLeg
execute as @e[tag=arctic_stand] run data remove entity @s Pose.RightLeg
scoreboard players set @s subcounter2 8

execute facing entity @a[sort=nearest,limit=1,distance=..7,gamemode=!spectator,scores={maxHP=1..}] feet run tp @s ~ ~ ~ ~ 0
data modify entity @e[tag=arctic_stand,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute at @s run summon armor_stand ^-0.1 ^0.8 ^1.3 {Tags:["b4axe1"],Marker:1b,Invisible:1b,NoGravity:1b}