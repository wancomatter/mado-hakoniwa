execute unless entity @e[type=skeleton_horse,tag=jumphorse0,limit=1,distance=..1.0] run summon skeleton_horse ~ ~3 ~ {DeathTime:19s,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["ini","jumphorse0","jumphorse_ready","wnkm.owned","wnkm.round"],Tame:1b,attributes:[{base:0.0d,id:"minecraft:movement_speed"}],DeathLootTable:"empty"}
execute if entity @e[tag=ini,limit=1] run tp @e[tag=ini,limit=1] @s
execute if entity @e[tag=ini,limit=1] run tag @e[tag=ini] remove ini
