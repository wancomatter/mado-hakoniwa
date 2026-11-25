execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 8

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 130
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 10
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0


summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,NoGravity:1b,Pose:{Head:[117.0f,0.0f,0.0f]},Small:1b,Tags:["necro_s13_circle","first","wnkm.owned","wnkm.round"],Team:"Purple"}
data modify entity @e[tag=first,limit=1] Pose.Head[1] set from entity @s Rotation[0]
execute as @e[tag=first,limit=1] run tp @s ~ ~2 ~ ~ 33
data merge entity @e[tag=first,limit=1] {Tags:["necro_s13_circle"],Glowing:1b,equipment:{head:{id:"minecraft:golden_hoe",count:1,components:{"minecraft:custom_data":{LegacySkill:105}}}}}

playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 3 1.6
