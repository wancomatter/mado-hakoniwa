summon area_effect_cloud ~ ~ ~ {Age:0,Duration:3,Tags:["necro_s6_target_player_AEC","first","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute as @e[tag=first] store result score @s Cooldown1 run data get entity @s Pos[0] 1000
execute as @e[tag=first] store result score @s Cooldown2 run data get entity @s Pos[2] 1000
tag @e[tag=first] remove first
