execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 13

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 180
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_r] run data modify entity @s ArmorItems[{}].tag.CustomModelData set value 1036
execute rotated ~ 0 run summon minecraft:armor_stand ^-0.3 ^0.75 ^ {Tags:["necro_stand_rod"],Team:"Purple",NoBasePlate:1b,Invisible:1b,Marker:1b,Glowing:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1037}}],DisabledSlots:4144959}

kill @e[tag=necro_s7_spirit]
kill @e[tag=necro_s7_circle]

playsound minecraft:entity.zombie_horse.death master @a ~ ~3 ~ 4 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~3 ~ 4 0.8
particle minecraft:flash ~ ~3 ~ 1 1 1 1 10
summon armor_stand ~ ~2 ~ {Tags:["necro_s7_circle"],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:104}}],Marker:1b,Invisible:1b,NoGravity:1b,Glowing:1b,Pose:{Head:[180f,0f,0f]},Team:"DarkGreen"}
scoreboard players set @e[tag=necro_s7_circle,limit=1,sort=nearest] counter 200
scoreboard players set @e[tag=necro_s7_circle,limit=1,sort=nearest] subcounter 100

schedule function wancomatter:boss/necro/skill7/sc1 17t
