execute positioned ^ ^ ^22.8 if entity @e[type=skeleton_horse,tag=jumphorse1,limit=1,distance=..1.3] run tp @e[type=skeleton_horse,tag=jumphorse1,limit=1,sort=nearest,distance=..1.3] ~ ~ ~ ~90 0
execute positioned ^ ^ ^22.8 unless entity @e[type=skeleton_horse,tag=jumphorse1,limit=1,distance=..1.3] run summon skeleton_horse ~ ~3 ~ {DeathTime:19s,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["ini","jumphorse1","jumphorse_merry","jumphorse_ready","wnkm.owned","wnkm.round"],Tame:1b,attributes:[{base:0.0d,id:"minecraft:movement_speed"}],DeathLootTable:"empty"}
execute if entity @e[tag=ini,limit=1] positioned ^ ^ ^22.8 run tp @e[tag=ini,limit=1] ~ ~ ~ ~90 0
execute if entity @e[tag=ini,limit=1] run tag @e[tag=ini] remove ini

scoreboard players add @s dummy 1
execute rotated ~36 ~ run function wancomatter:game/pvp/jumphorse/stand_o1_loop2
execute unless score @s dummy matches 5.. rotated ~72 ~ run function wancomatter:game/pvp/jumphorse/stand_o1_loop
