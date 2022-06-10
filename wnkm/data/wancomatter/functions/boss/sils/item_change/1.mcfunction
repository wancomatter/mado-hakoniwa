function sirasagi:sirasagi/pose_first
scoreboard players add @s Cooldown4 130
#
#
#
scoreboard players add @s Cooldown4_max 40
scoreboard players add @s Cooldown5_max 28
scoreboard players remove @s Cooldown6_max 20
scoreboard players set @s Cooldown7_max 10

data modify entity @s Pose.LeftLeg set value [5f,0f,0f]
data modify entity @s Pose.RightLeg set value [-10f,0f,0f]
data merge entity @s {HandItems:[{},{}]}
execute facing entity @a[sort=nearest,limit=1,gamemode=!spectator,gamemode=!creative] eyes run tp @s ~ ~ ~ ~ 0
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 5 1