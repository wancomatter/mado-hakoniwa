execute as @a[distance=..48,gamemode=!spectator,scores={maxHP=1..}] run tag @s add target
scoreboard players set @a[tag=target] dummy 200
tag @a[tag=target] add avoid
function wancomatter:boss/arctic/move/target/select
execute facing entity @a[sort=nearest,limit=1,distance=..48,gamemode=!spectator] feet run tp @e[tag=arctic_stand,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated as @e[tag=arctic_stand,limit=1,sort=nearest] positioned 0.0 0.0 0.0 rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^0.35 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @s Motion[0] set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos[0]
data modify entity @s Motion[2] set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos[2]
data modify entity @e[tag=arctic_stand,limit=1] Pose.LeftArm set value [0.0f,0.0f,0.0f]
tag @a[tag=target] remove target
kill @e[tag=vector]

scoreboard players add @s sneak 1
execute if score @s sneak matches 16.. run scoreboard players set @s sneak 0
execute if score @s sneak matches 1 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [10f,0f,0f]
execute if score @s sneak matches 1 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [-10f,0f,0f]
execute if score @s sneak matches 3 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [30f,0f,0f]
execute if score @s sneak matches 3 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [-30f,0f,0f]
execute if score @s sneak matches 7 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [10f,0f,0f]
execute if score @s sneak matches 7 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [-10f,0f,0f]
execute if score @s sneak matches 9 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [-10f,0f,0f]
execute if score @s sneak matches 9 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [10f,0f,0f]
execute if score @s sneak matches 11 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [-30f,0f,0f]
execute if score @s sneak matches 11 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [30f,0f,0f]
execute if score @s sneak matches 15 as @e[tag=arctic_stand] run data modify entity @s Pose.LeftLeg set value [-10f,0f,0f]
execute if score @s sneak matches 15 as @e[tag=arctic_stand] run data modify entity @s Pose.RightLeg set value [10f,0f,0f]
