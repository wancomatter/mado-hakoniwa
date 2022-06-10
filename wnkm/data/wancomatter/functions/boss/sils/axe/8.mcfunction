function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 50
scoreboard players remove @s Cooldown5 20
scoreboard players add @s Cooldown6 20
#
#
scoreboard players remove @s Cooldown5_max 10
scoreboard players add @s Cooldown6_max 5
scoreboard players set @s Cooldown7_max 7


execute unless score #difficult counter matches 3..4 run data merge entity @s {HandItems:[{},{}]}
execute if score #difficult counter matches 3..4 run data merge entity @s {HandItems:[{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:112}}]}

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 3.5 0.5
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 3.5 0.5


execute as @a[distance=..50] positioned as @s if score @s playerNumber = @e[tag=axe_target,limit=1,sort=nearest] playerNumber run tag @s add target
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["vector","target_distance"]}
summon minecraft:armor_stand ^ ^ ^ {Tags:["this","sils_axe3"],Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:112}},{}],Pose:{RightArm:[45f,0f,0f]}}
scoreboard players set @e[tag=this] subcounter2 45
execute as @e[tag=vector] store result score @s subcounter run data get entity @a[tag=target,limit=1,sort=nearest] Pos[0] 200
execute as @e[tag=vector] store result score @s subcounter2 run data get entity @a[tag=target,limit=1,sort=nearest] Pos[2] 200
execute as @e[tag=vector] run scoreboard players operation @s subcounter -= @e[tag=axe_target,limit=1] subcounter
execute as @e[tag=vector] run scoreboard players operation @s subcounter2 -= @e[tag=axe_target,limit=1] subcounter2
execute facing entity @e[tag=vector] feet run tp @s ~ ~ ~ ~ 0
execute as @a[tag=target] run function wancomatter:operation/distance
execute as @a[tag=target] run scoreboard players operation @s dummy *= @s dummy
execute as @a[tag=target] run scoreboard players operation @e[tag=vector] dummy = @s dummy
tag @a[tag=target] remove target
scoreboard players operation @e[tag=vector] dummy /= #10 counter
scoreboard players operation @e[tag=vector] dummy /= #9 counter
execute as @e[tag=vector] facing entity @s feet positioned 0.0 0.05 0.0 run tp @s ~ ~ ~ ~ 0
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
data modify entity @e[tag=this,limit=1] Pose.RightArm[1] set from entity @s Rotation[0]
execute as @e[tag=vector] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.1
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this
