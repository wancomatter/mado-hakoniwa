summon area_effect_cloud ~ ~ ~ {Duration:10,Age:0,Tags:["necro_s7_AEC","necro_s7_AEC2","first"]}
tp @e[tag=first] ~ ~ ~ 45 0
scoreboard players set @e[tag=first] counter 6
scoreboard players set @e[tag=first] subcounter 6000
scoreboard players set @e[tag=first] subcounter2 3000
tag @e[tag=first] remove first

