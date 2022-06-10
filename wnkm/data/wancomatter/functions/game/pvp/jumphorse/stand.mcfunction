execute unless entity @e[type=skeleton_horse,tag=jumphorse0,limit=1,distance=..1.0] run summon skeleton_horse ~ ~3 ~ {Tags:["ini","jumphorse0","jumphorse_ready"],Invulnerable:1b,DeathTime:19s,DeathLootTable:"empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d}],Tame:1b,NoAI:1b,Silent:1b}
execute if entity @e[tag=ini,limit=1] run tp @e[tag=ini,limit=1] @s
execute if entity @e[tag=ini,limit=1] run tag @e[tag=ini] remove ini

