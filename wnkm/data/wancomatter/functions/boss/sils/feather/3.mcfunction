execute as @e[tag=sils_feather,limit=1,sort=nearest] run function wancomatter:boss/sils/pose_first
scoreboard players add @e[tag=sils_feather,limit=1,sort=nearest] Cooldown5 10
#
scoreboard players remove @e[tag=sils_feather,limit=1,sort=nearest] Cooldown5_max 50
scoreboard players set @e[tag=sils_feather,limit=1,sort=nearest] Cooldown7_max 7

execute if score @s subcounter matches 70 run effect give @s slow_falling 5 0 true
execute if score @s subcounter matches 70 run scoreboard players remove @s subcounter 1
particle minecraft:cloud ~ ~1.5 ~ 0 0 0 0.3 100
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
loot spawn ~ -10 ~ loot wancomatter:random/0-360
execute store result entity @e[tag=vector,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=vector] at @s run tp @s ^ ^0.6 ^0.4
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
