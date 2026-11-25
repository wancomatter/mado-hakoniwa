scoreboard players add @s subcounter 1
execute positioned ^ ^ ^18.3 run summon skeleton_horse ~ ~3 ~ {Health:1000.0f,NoAI:1b,Silent:1b,Tags:["ini","first","117horse","117horse3","mob","undead","wnkm.owned","wnkm.round"],attributes:[{base:0.0d,id:"minecraft:movement_speed"},{base:1000.0d,id:"minecraft:max_health"}],DeathLootTable:"empty"}
execute positioned ^ ^ ^18.3 run tp @e[tag=ini,limit=1] ~ ~ ~ ~-90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini

execute rotated ~36 ~ run function wancomatter:boss/necro/skill2/summon_horse4
execute unless score @s subcounter matches 5.. rotated ~72 ~ run function wancomatter:boss/necro/skill2/summon_horse3
