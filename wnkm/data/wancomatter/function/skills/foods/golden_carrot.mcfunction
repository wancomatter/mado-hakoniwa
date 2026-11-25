effect give @s minecraft:absorption 10 0
effect clear @s resistance
execute at @s run summon area_effect_cloud ~ ~0.4 ~ {Age:4,Duration:5,Effects:[{Amplifier:0b,Duration:1,Id:7},{Amplifier:4b,Duration:20000000,Id:11,ShowIcon:0b,ShowParticles:0b}],Radius:0.4f,WaitTime:1,potion_contents:{custom_effects:[{amplifier:0b,duration:1,id:"minecraft:instant_damage"},{amplifier:4b,duration:20000000,id:"minecraft:resistance",show_icon:0b,show_particles:0b}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
scoreboard players set @s instantDMGshield 100
scoreboard players set @s instantDMGS_time 2
tag @s add noResistanfce
tag @s remove eat_golden_carrot
