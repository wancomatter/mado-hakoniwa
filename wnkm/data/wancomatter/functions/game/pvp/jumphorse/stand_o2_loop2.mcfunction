execute positioned ^ ^3 ^25.3 if entity @e[type=skeleton_horse,tag=jumphorse2,limit=1,distance=..1.3] run tp @e[type=skeleton_horse,tag=jumphorse2,limit=1,sort=nearest,distance=..1.3] ~ ~ ~ ~-90 0
execute positioned ^ ^3 ^25.3 unless entity @e[type=skeleton_horse,tag=jumphorse2,limit=1,distance=..1.3] run summon skeleton_horse ~ ~3 ~ {Tags:["ini","jumphorse2","jumphorse_merry","jumphorse_ready"],Invulnerable:1b,DeathTime:19s,DeathLootTable:"empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d}],Tame:1b,NoAI:1b,Silent:1b}
execute if entity @e[tag=ini,limit=1] positioned ^ ^3 ^25.3 run tp @e[tag=ini,limit=1] ~ ~ ~ ~-90 0
execute if entity @e[tag=ini,limit=1] run tag @e[tag=ini] remove ini

