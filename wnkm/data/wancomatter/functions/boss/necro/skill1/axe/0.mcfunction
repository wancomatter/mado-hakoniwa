tag @s add necro_s1_axe_GC_used
tag @s add necro_s1_axe_GC_use

tag @a[scores={maxHP=1..},limit=1,sort=nearest] add necro_s1_axe_target
execute at @a[tag=necro_s1_axe_target,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["necro_s1_GC_AEC"],Duration:3}
execute as @e[tag=necro_s1_GC_AEC] store result score @s Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=necro_s1_GC_AEC] store result score @s Cooldown2 run data get entity @s Pos[2] 100
execute as @e[tag=necro_s1_GC_AEC] run scoreboard players operation @s Cooldown3 = @s Cooldown1
execute as @e[tag=necro_s1_GC_AEC] run scoreboard players operation @s Cooldown4 = @s Cooldown2
