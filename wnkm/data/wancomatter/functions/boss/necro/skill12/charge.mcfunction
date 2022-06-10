tp @e[tag=necro] 0 8.02 0 0 0

execute if score #difficult counter matches 3..4 as @e[tag=necro_s12entity,type=skeleton_horse] at @s run function wancomatter:boss/necro/skill12/merry_goland
kill @e[tag=necro_s12entity]
kill @e[tag=necro_s1skeleton]

playsound minecraft:block.portal.trigger master @a 0 7 0 10 0.70
playsound minecraft:block.portal.travel master @a 0 7 0 10 1.75
particle portal 0 9 0 0 0 0 3 800 normal @a
particle portal 0 9 0 0 0 0 3 200 force @a

summon area_effect_cloud 0 5 0 {Duration:95,Age:0,Tags:["necro_s12chargeAEC"]}
schedule function wancomatter:boss/necro/skill12/charge_particle 40t
schedule function wancomatter:boss/necro/skill12/0_schedule 100t