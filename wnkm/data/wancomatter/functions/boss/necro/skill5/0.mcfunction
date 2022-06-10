execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 8

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 10
execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 60
execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 10
execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 0
execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1.5
particle minecraft:witch ~ ~2.2 ~ 0.1 0.2 0.1 1 80 normal @a
particle minecraft:witch ~ ~2.2 ~ 0.1 0.2 0.1 1 20 force @a

execute as @a[scores={maxHP=1..,boss_hate2=1..}] run scoreboard players operation #necroBoss boss_hate > @s boss_hate2
execute as @a[scores={maxHP=1..,boss_hate2=1..}] if score @s boss_hate2 >= #necroBoss boss_hate run tag @s add necro_s5_target
execute unless entity @a[tag=necro_s5_target,limit=1] run tag @a[scores={maxHP=1..},limit=1,sort=nearest] add necro_s5_target
execute facing entity @a[tag=necro_s5_target,limit=1] feet run tp @s ~ ~ ~ ~ 0
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["necro_s5_stand1"],Duration:30}
execute rotated as @s run tp @e[tag=necro_s5_stand1,limit=1,sort=nearest] ~ 8.02 ~ ~ 0


