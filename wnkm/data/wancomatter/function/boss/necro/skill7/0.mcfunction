execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 13

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 180
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_r] run data modify entity @s equipment.head.components."minecraft:item_model" set value "wnkm:appearance/iron_hoe/1036"
execute as @e[tag=necro_stand_r] run data modify entity @s equipment.head.components."minecraft:custom_data".LegacySkill set value 1036
execute rotated ~ 0 run summon minecraft:armor_stand ^-0.3 ^0.75 ^ {DisabledSlots:4144959,Glowing:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,NoGravity:1b,Tags:["necro_stand_rod","wnkm.owned","wnkm.round"],Team:"Purple",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1037},"minecraft:item_model":"wnkm:appearance/iron_hoe/1037"},count:1,id:"minecraft:iron_hoe"}}}

kill @e[tag=necro_s7_spirit]
kill @e[tag=necro_s7_circle]

playsound minecraft:entity.zombie_horse.death master @a ~ ~3 ~ 4 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~3 ~ 4 0.8
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~3 ~ 1 1 1 1 10
summon armor_stand ~ ~2 ~ {Glowing:1b,Invisible:1b,Marker:1b,NoGravity:1b,Pose:{Head:[180.0f,0.0f,0.0f]},Tags:["necro_s7_circle","wnkm.owned","wnkm.round"],Team:"DarkGreen",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:104},"minecraft:item_model":"wnkm:appearance/golden_hoe/104"},count:1,id:"minecraft:golden_hoe"}}}
scoreboard players set @e[tag=necro_s7_circle,limit=1,sort=nearest] counter 200
scoreboard players set @e[tag=necro_s7_circle,limit=1,sort=nearest] subcounter 100

schedule function wancomatter:boss/necro/skill7/sc1 17t
