execute as @e[tag=sils_feather,limit=1,sort=nearest] run function wancomatter:boss/sils/pose_first
scoreboard players add @e[tag=sils_feather,limit=1,sort=nearest] Cooldown5 10
#
scoreboard players remove @e[tag=sils_feather,limit=1,sort=nearest] Cooldown5_max 50
scoreboard players set @e[tag=sils_feather,limit=1,sort=nearest] Cooldown7_max 7

effect give @s slow_falling 5 0 true
scoreboard players remove @s subcounter 1
particle minecraft:cloud ~ ~1.5 ~ 0 0 0 0.3 100
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
execute facing entity @a[sort=nearest,limit=1,distance=..24,scores={maxHP=1..}] feet run tp @s ~ ~ ~ ~ 0
execute rotated as @s positioned 0.0 0.0 0.0 rotated ~ 0 run summon minecraft:armor_stand ^ ^0.6 ^0.5 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
