
execute positioned ^ ^1 ^20.8 run summon skeleton_horse ~ ~3 ~ {Tags:["ini","first","117horse","117horse2","mob","undead"],DeathLootTable:"empty",Attributes:[{Name:"generic.movement_speed",Base:0d},{Name:"generic.max_health",Base:1000d}],Health:1000f,NoAI:1b,Silent:1b}
execute positioned ^ ^1 ^20.8 run tp @e[tag=ini,limit=1] ~ ~ ~ ~90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini

