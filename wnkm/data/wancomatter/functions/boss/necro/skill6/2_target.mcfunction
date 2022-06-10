summon area_effect_cloud ~ ~ ~ {Tags:["necro_s6_target_player_AEC","first"],Duration:3,Age:0}
execute as @e[tag=first] store result score @s Cooldown1 run data get entity @s Pos[0] 1000
execute as @e[tag=first] store result score @s Cooldown2 run data get entity @s Pos[2] 1000
tag @e[tag=first] remove first
