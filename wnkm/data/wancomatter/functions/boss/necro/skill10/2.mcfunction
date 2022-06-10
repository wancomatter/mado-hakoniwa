execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 80
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 120
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

#演出
particle flash ~ ~3 ~ 0 0 0 1 1 force @a
particle flash ~ ~3 ~ 0.4 0.4 0.4 1 4 normal @a
particle explosion ~ ~3 ~ 0 0 0 1 1 force @a
particle explosion ~ ~3 ~ 0.4 0.4 0.4 1 4 normal @a
particle cloud ~ ~3 ~ 0 0 0 0.4 240 normal @a
particle cloud ~ ~3 ~ 0 0 0 0.4 60 force @a
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 3 1

#召喚
summon phantom ~ ~3 ~ {Tags:["mob","undead","first","necro_s10phantom","phantom_sound"],Team:"Purple",Size:1,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f]}
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
scoreboard players operation #dummy HP = @e[tag=necro,limit=1] HP
scoreboard players operation #dummy maxHP = @e[tag=necro,limit=1] maxHP
scoreboard players operation #dummy HP += #dummy maxHP
scoreboard players operation #dummy HP *= #100 counter
scoreboard players operation #dummy HP /= #dummy maxHP
scoreboard players remove #dummy HP 140
scoreboard players operation #dummy HP *= #-1 counter
execute unless score #difficult counter matches 2..4 run scoreboard players operation #dummy HP *= #4 counter
execute if score #difficult counter matches 2 run scoreboard players operation #dummy HP *= #5 counter
execute if score #difficult counter matches 3 run scoreboard players operation #dummy HP *= #6 counter
execute if score #difficult counter matches 4 run scoreboard players operation #dummy HP *= #8 counter
execute if score #difficult counter matches 2..4 run scoreboard players operation #dummy HP /= #3 counter
execute store result entity @e[tag=first,limit=1] Size int 0.03 run scoreboard players operation #dummy HP *= #5 counter
scoreboard players operation @e[tag=first] maxHP = #dummy HP
scoreboard players operation @e[tag=first] HP = #dummy HP
scoreboard players reset #dummy
tag @e[tag=first] remove first
