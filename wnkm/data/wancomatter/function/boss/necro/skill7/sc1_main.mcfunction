summon area_effect_cloud ~ ~ ~ {Age:0,Duration:10,Tags:["necro_s7_AEC","necro_s7_AEC1","first","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
tp @e[tag=first] ~ ~ ~ 0 0
scoreboard players set @e[tag=first] counter 6
scoreboard players set @e[tag=first] subcounter 6000
scoreboard players set @e[tag=first] subcounter2 0
tag @e[tag=first] remove first
