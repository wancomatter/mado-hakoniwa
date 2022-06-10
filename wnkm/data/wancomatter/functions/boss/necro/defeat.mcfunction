execute if entity @a[scores={maxHP=1..},gamemode=!spectator,limit=1] run function wancomatter:boss/necro/defeat_log

kill @e[tag=necro_s0shot]
kill @e[tag=necro_s1skeleton]
kill @e[tag=necro_s3zombie]
kill @e[tag=necro_s4skeleton]
kill @e[tag=necro_s0shot] 
kill @e[tag=necro_s1_circle]
kill @e[tag=117_2o]
kill @e[tag=117horse]
kill @e[tag=necro_s3_circle]
kill @e[tag=necro_s9shot]
kill @e[tag=necro_s10_circle]
kill @e[tag=necro_s10phantom]
kill @e[tag=necro_s11_ghost_rage]
kill @e[tag=necro_s12AEC]
kill @e[tag=necro_s12entity]
kill @e[type=arrow]
kill @e[tag=necro_s13_circle]
kill @e[tag=necro_s13_fire]
kill @e[tag=necro_s14_gate]
kill @e[tag=necro_s14_razer]

kill @e[tag=necro_s8_stand1]
kill @e[tag=necro_s8_stand2]
kill @e[tag=necro_s8_stand3]
kill @e[tag=necro_s8skeleton]
kill @e[tag=necro_s5_stand1]
kill @e[tag=necro_s5pigman_center]
kill @e[tag=necro_s10_circle]
kill @e[tag=necro_s7_circle]
kill @e[tag=necro_s7_AEC]
kill @e[tag=necro_s7_zombie_horse]
kill @e[tag=necro_s7_spirit]
kill @e[tag=necro_s6_random_target_AEC]
kill @e[tag=necro_s6_darknessoverload]
kill @e[tag=necro_s6_darknessoverload_meteor]
kill @e[tag=necro_s6_shot]

scoreboard players reset #necroBoss teamNumber

execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate2=1..}] boss_hate2
bossbar remove minecraft:necro
kill @e[tag=necro_stand]
kill @e[tag=necro_stand_rod]
scoreboard players reset @s maxMana
kill @s