scoreboard players set @s Cooldown1 170
tag @s add usedskill
execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 30
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

execute facing entity @a[limit=1,sort=nearest,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ 0
kill @e[tag=necro_s1skeleton]

playsound minecraft:block.portal.travel master @a ~ ~ ~ 5 2

summon minecraft:armor_stand ~ 7.0 ~ {Tags:["first","necro_s1_circle"],Invisible:1b,NoGravity:1b,Marker:1b,Fire:32767s,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:105}}]}
execute rotated as @s run tp @e[tag=first] ~ 7.0 ~ ~180 0
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
tag @a[tag=target] remove target

