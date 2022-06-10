effect give @s minecraft:absorption 9 0
effect clear @s resistance
execute at @s run summon area_effect_cloud ~ ~0.4 ~ {Radius:0.4f,Age:4,Duration:5,WaitTime:1,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:11b,Amplifier:4b,Duration:20000000,ShowIcon:0b,ShowParticles:0b}]}
scoreboard players set @s instantDMGshield 100
scoreboard players set @s instantDMGS_time 2
tag @s add noResistanfce
tag @s remove eat_golden_carrot
