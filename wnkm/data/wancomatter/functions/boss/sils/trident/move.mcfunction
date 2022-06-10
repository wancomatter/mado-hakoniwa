execute facing entity @a[sort=nearest,limit=1,distance=..48,scores={maxHP=1..}] feet run tp @s ~ ~ ~ ~ 0
execute facing entity @a[sort=nearest,limit=1,distance=..48,scores={maxHP=1..}] feet positioned 0.0 0.0 0.0 rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^0.42 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]

scoreboard players operation #dummy dummy = @s counter
scoreboard players operation #dummy dummy %= #16 counter
execute if score #dummy dummy matches 1 run data modify entity @s Pose.LeftLeg set value [10f,0f,0f]
execute if score #dummy dummy matches 1 run data modify entity @s Pose.RightLeg set value [-10f,0f,0f]
execute if score #dummy dummy matches 3 run data modify entity @s Pose.LeftLeg set value [30f,0f,0f]
execute if score #dummy dummy matches 3 run data modify entity @s Pose.RightLeg set value [-30f,0f,0f]
execute if score #dummy dummy matches 7 run data modify entity @s Pose.LeftLeg set value [10f,0f,0f]
execute if score #dummy dummy matches 7 run data modify entity @s Pose.RightLeg set value [-10f,0f,0f]
execute if score #dummy dummy matches 9 run data modify entity @s Pose.LeftLeg set value [-10f,0f,0f]
execute if score #dummy dummy matches 9 run data modify entity @s Pose.RightLeg set value [10f,0f,0f]
execute if score #dummy dummy matches 11 run data modify entity @s Pose.LeftLeg set value [-30f,0f,0f]
execute if score #dummy dummy matches 11 run data modify entity @s Pose.RightLeg set value [30f,0f,0f]
execute if score #dummy dummy matches 15 run data modify entity @s Pose.LeftLeg set value [-10f,0f,0f]
execute if score #dummy dummy matches 15 run data modify entity @s Pose.RightLeg set value [10f,0f,0f]
