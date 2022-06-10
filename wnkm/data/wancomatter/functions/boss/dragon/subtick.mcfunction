execute if entity @e[tag=dragon1_stand,scores={CooldownX=1..},limit=1] as @e[tag=dragon1_stand,scores={CooldownX=1..}] run function wancomatter:boss/dragon/pose_tick

execute if entity @e[tag=dragon_s8_AEC,limit=1] as @e[tag=dragon_s8_AEC] at @s run function wancomatter:boss/dragon/skill8/1
execute if entity @e[tag=dragon_s8_bullet,limit=1] as @e[tag=dragon_s8_bullet] at @s run function wancomatter:boss/dragon/skill8/3