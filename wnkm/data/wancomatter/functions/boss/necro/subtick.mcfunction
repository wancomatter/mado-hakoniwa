execute as @e[tag=necro_stand,scores={subcounter2=1..}] run function wancomatter:boss/necro/pose_r
execute as @e[tag=necro_stand,scores={subcounter2=1..}] run function wancomatter:boss/necro/pose_l
execute as @e[tag=necro_stand,scores={subcounter2=1..}] run scoreboard players remove @s subcounter2 1

execute if entity @a[advancements={wancomatter:general/ehp_lightning=true},limit=1] as @a[advancements={wancomatter:general/ehp_lightning=true}] run function wancomatter:boss/necro/ehp/lightning

execute if entity @e[tag=necro_s0shot,limit=1] unless score #difficult counter matches 2..4 as @e[tag=necro_s0shot] at @s run function wancomatter:boss/necro/skill0/3-easy
execute if entity @e[tag=necro_s0shot,limit=1] if score #difficult counter matches 2 as @e[tag=necro_s0shot] at @s run function wancomatter:boss/necro/skill0/3-normal
execute if entity @e[tag=necro_s0shot,limit=1] if score #difficult counter matches 3 as @e[tag=necro_s0shot] at @s run function wancomatter:boss/necro/skill0/3-hard
execute if entity @e[tag=necro_s0shot,limit=1] if score #difficult counter matches 4 as @e[tag=necro_s0shot] at @s run function wancomatter:boss/necro/skill0/3-lunatic
execute if entity @e[tag=necro_s1_circle,limit=1] as @e[tag=necro_s1_circle] at @s run function wancomatter:boss/necro/skill1/1
execute if entity @e[tag=necro_s1skeleton,scores={subcounter=1..},limit=1] as @e[tag=necro_s1skeleton,scores={subcounter=1..}] at @s run function wancomatter:boss/necro/skill1/3
execute if entity @e[tag=necro_s1_sword,limit=1] if score #difficult counter matches 3..4 as @e[tag=necro_s1_sword] at @s run function wancomatter:boss/necro/skill1/sword/tick
execute if entity @e[tag=necro_s1_axe,limit=1] as @e[tag=necro_s1_axe] at @s run function wancomatter:boss/necro/skill1/axe/tick
execute if entity @e[tag=necro_s1_mage,limit=1] as @e[tag=necro_s1_mage] at @s run function wancomatter:boss/necro/skill1/mage/tick
execute if entity @e[tag=necro_s1_mage_bone,limit=1] as @e[tag=necro_s1_mage_bone] at @s run function wancomatter:boss/necro/skill1/mage/1
execute if entity @e[tag=necro_s1_priest,limit=1] as @e[tag=necro_s1_priest] at @s run function wancomatter:boss/necro/skill1/priest/tick
execute if entity @e[tag=117_2o,limit=1] as @e[tag=117_2o] at @s run function wancomatter:boss/necro/skill2/1
execute if entity @e[tag=117_2rush,limit=1] as @e[tag=117_2rush] at @s run function wancomatter:boss/necro/skill2/3
execute if entity @e[tag=necro_s3_circle,limit=1] as @e[tag=necro_s3_circle] at @s run function wancomatter:boss/necro/skill3/1
execute if entity @e[tag=necro_s4skeleton,scores={counter=1..},limit=1] as @e[tag=necro_s4skeleton,scores={counter=1..}] at @s run function wancomatter:boss/necro/skill4/1

execute if entity @e[tag=necro_s9shot,limit=1] as @e[tag=necro_s9shot] at @s run function wancomatter:boss/necro/skill9/3
execute if entity @e[tag=necro_s11_ghost_rage,limit=1] as @e[tag=necro_s11_ghost_rage] at @s run function wancomatter:boss/necro/skill11/1

execute if entity @e[tag=necro_s12AEC,limit=1] as @e[tag=necro_s12AEC] at @s run function wancomatter:boss/necro/skill12/1
execute if entity @e[tag=necro_s12entity,limit=1] as @e[tag=necro_s12entity] at @s run function wancomatter:boss/necro/skill12/tick
execute if entity @e[tag=necro_s12chargeAEC,limit=1] as @e[tag=necro_s12chargeAEC] at @s run function wancomatter:boss/necro/skill12/charge_tick

execute if entity @e[tag=necro_s13_fire,limit=1] as @e[tag=necro_s13_fire] at @s run function wancomatter:boss/necro/skill13/2
execute if entity @e[tag=necro_s13_circle,limit=1] as @e[tag=necro_s13_circle] at @s run function wancomatter:boss/necro/skill13/1
execute if entity @e[tag=necro_s14_gate,limit=1] as @e[tag=necro_s14_gate] at @s run function wancomatter:boss/necro/skill14/1
execute if entity @e[tag=necro_s14_razer,limit=1] as @e[tag=necro_s14_razer] at @s run function wancomatter:boss/necro/skill14/3


execute if entity @e[tag=necro_s5_stand1,limit=1] as @e[tag=necro_s5_stand1] at @s run function wancomatter:boss/necro/skill5/1
execute if entity @e[tag=necro_s5pigman_center,limit=1] as @e[tag=necro_s5pigman_center] at @s run function wancomatter:boss/necro/skill5/tick
execute if entity @e[tag=necro_s10_circle,limit=1] as @e[tag=necro_s10_circle] at @s run function wancomatter:boss/necro/skill10/1
execute if entity @e[tag=necro_s8_stand1,limit=1] as @e[tag=necro_s8_stand1] at @s run function wancomatter:boss/necro/skill8/1_1
execute if entity @e[tag=necro_s8_stand2,limit=1] as @e[tag=necro_s8_stand2] at @s run function wancomatter:boss/necro/skill8/1_2
execute if entity @e[tag=necro_s8_stand3,limit=1] as @e[tag=necro_s8_stand3] at @s run function wancomatter:boss/necro/skill8/3
execute if entity @e[tag=necro_s8skeleton,scores={subcounter=1..},limit=1] as @e[tag=necro_s8skeleton,scores={subcounter=1..}] at @s run function wancomatter:boss/necro/skill8/entity/tick
execute if entity @e[tag=necro_s7_circle,limit=1] as @e[tag=necro_s7_circle] at @s run function wancomatter:boss/necro/skill7/circle_tick
execute if entity @e[tag=necro_s7_AEC,limit=1] as @e[tag=necro_s7_AEC] at @s run function wancomatter:boss/necro/skill7/summon_tick
execute if entity @e[tag=necro_s7_zombie_horse,limit=1] as @e[tag=necro_s7_zombie_horse] at @s run function wancomatter:boss/necro/skill7/1
execute if entity @e[tag=necro_s6_target_player_AEC,limit=1] as @e[tag=necro_s6_target_player_AEC,nbt=!{Age:0}] at @s run function wancomatter:boss/necro/skill6/2_motion_check
execute if entity @e[tag=necro_s6_return_spirit,limit=1] as @e[tag=necro_s6_return_spirit] at @s run function wancomatter:boss/necro/skill6/charge/spirit_tick
execute if entity @e[tag=necro_s6_shot,limit=1] as @e[tag=necro_s6_shot] at @s run function wancomatter:boss/necro/skill6/3
execute if entity @e[tag=necro_s6_darknessoverload,limit=1] as @e[tag=necro_s6_darknessoverload] at @s run function wancomatter:boss/necro/skill6/5
execute if entity @e[tag=necro_s6_darknessoverload_meteor,limit=1] as @e[tag=necro_s6_darknessoverload_meteor] at @s run function wancomatter:boss/necro/skill6/6