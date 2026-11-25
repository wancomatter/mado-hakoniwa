
execute positioned ^ ^1 ^20.8 run summon skeleton_horse ~ ~3 ~ {Health:1000.0f,NoAI:1b,Silent:1b,Tags:["ini","first","117horse","117horse2","mob","undead","wnkm.owned","wnkm.round"],attributes:[{base:0.0d,id:"minecraft:movement_speed"},{base:1000.0d,id:"minecraft:max_health"}],DeathLootTable:"empty"}
execute positioned ^ ^1 ^20.8 run tp @e[tag=ini,limit=1] ~ ~ ~ ~90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini
