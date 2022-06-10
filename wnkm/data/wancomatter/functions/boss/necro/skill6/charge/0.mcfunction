execute as @e[tag=necro_s7_spirit,type=armor_stand] at @s run function wancomatter:boss/necro/skill6/charge/spirit_first
kill @e[tag=necro_s12entity]
kill @e[tag=necro_s1skeleton]

execute at @e[tag=necro] run playsound minecraft:block.portal.trigger master @a ~ ~1 ~ 10 0.70
execute at @e[tag=necro] run playsound minecraft:block.portal.travel master @a ~ ~1 ~ 10 1.75
execute at @e[tag=necro] run particle portal ~ ~1 ~ 0 0 0 3 800 normal @a
execute at @e[tag=necro] run particle portal ~ ~1 ~ 0 0 0 3 200 force @a

summon area_effect_cloud 0 5 0 {Duration:95,Age:0,Tags:["necro_s12chargeAEC"]}
schedule function wancomatter:boss/necro/skill6/charge/particle 40t
schedule function wancomatter:boss/necro/skill6/0_schedule 100t
