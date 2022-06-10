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
execute facing entity @a[sort=nearest,limit=1,distance=..24,gamemode=!spectator,gamemode=!creative] feet run tp @s ~ ~ ~ ~ 0
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
loot spawn ~ -10 ~ loot wancomatter:random/0-360
execute store result entity @e[tag=vector,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=vector] at @s run tp @s ^ ^0.5 ^0.5
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
