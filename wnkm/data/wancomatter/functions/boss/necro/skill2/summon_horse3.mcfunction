scoreboard players add @s subcounter 1
execute positioned ^ ^ ^18.3 run summon skeleton_horse ~ ~3 ~ {Tags:["ini","first","117horse","117horse3","mob","undead"],DeathLootTable:"empty",Attributes:[{Name:"generic.movement_speed",Base:0d},{Name:"generic.max_health",Base:1000d}],Health:1000f,NoAI:1b,Silent:1b}
execute positioned ^ ^ ^18.3 run tp @e[tag=ini,limit=1] ~ ~ ~ ~-90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini

execute rotated ~36 ~ run function wancomatter:boss/necro/skill2/summon_horse4
execute unless score @s subcounter matches 5.. rotated ~72 ~ run function wancomatter:boss/necro/skill2/summon_horse3
