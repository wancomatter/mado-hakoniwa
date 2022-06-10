execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 30
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

tp @s ~ 8.02 ~ 0 0

playsound minecraft:block.portal.trigger master @a 0 7 0 10 0.70
playsound minecraft:block.portal.travel master @a 0 7 0 10 1.75

kill @e[tag=necro_s1skeleton]
kill @e[tag=necro_s3zombie]
kill @e[tag=necro_s4skeleton]

scoreboard players set @a boss_hate 0
kill @e[tag=117horse]
kill @e[tag=117_2o]
summon minecraft:armor_stand 0 7 0 {Tags:["first","117_2o","117_2o1"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 7 0 {Tags:["first","117_2o","117_2o2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=first,tag=117_2o1] at @s run function wancomatter:boss/necro/skill2/summon_horse1
execute as @e[tag=first,tag=117_2o2] at @s run function wancomatter:boss/necro/skill2/summon_horse3
tag @e[tag=first,type=armor_stand] remove first
scoreboard players set @e[tag=first] maxHP 200
scoreboard players set @e[tag=first] HP 200
team join Gray @e[tag=first]
function wancomatter:general/teamnumber_set
function wancomatter:boss/necro/skill2/0-loop
scoreboard players reset #dummy
