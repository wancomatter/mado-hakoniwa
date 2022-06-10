function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 150
scoreboard players add @s Cooldown5 10
scoreboard players remove @s Cooldown6 3
#
scoreboard players add @s Cooldown4_max 50
scoreboard players remove @s Cooldown5_max 10
scoreboard players add @s Cooldown6_max 5
scoreboard players set @s Cooldown7_max 7


data modify entity @s Pose.LeftLeg set value [-15f,0f,0f]
data modify entity @s Pose.RightLeg set value [5f,0f,0f]


particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 100
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
execute facing entity @a[sort=nearest,limit=1,distance=..24,scores={maxHP=1..}] feet run tp @s ~ ~ ~ ~ 0
execute rotated as @s positioned 0.0 0.0 0.0 rotated ~ 0 run summon minecraft:armor_stand ^ ^0.6 ^-1.3 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
