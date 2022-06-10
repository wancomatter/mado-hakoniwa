scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 280
scoreboard players set @s CooldownX_max 280

scoreboard players set @s dummy 0
execute rotated 0 -90 run function wancomatter:skills/073/circle
execute rotated 0 -90 run particle dust 1 1 1 4 ^ ^ ^10 0 0 0 1 1 force @a
execute rotated 0 90 run particle dust 1 1 1 4 ^ ^ ^10 0 0 0 1 1 force @a

tag @s add user
execute if data entity @e[tag=073dummyAEC,limit=1] Effects[{Id:14,Amplifier:1b}] as @e[tag=hit] run function wancomatter:skills/073/s12
execute at @e[tag=hit] run summon area_effect_cloud ~ ~ ~ {Tags:["this"],Radius:0.8f,Age:4,Duration:5,WaitTime:1,Particle:"minecraft:dust 0 0 0 0",Effects:[{}]}
execute as @e[tag=this] run data modify entity @s Effects set from entity @e[tag=073dummyAEC,limit=1,sort=nearest] Effects
tag @e[tag=this] remove this
tag @s remove user

execute at @e[tag=hit] run particle minecraft:witch ~ ~1 ~ 0.7 0.7 0.7 1 100 normal @a
execute at @e[tag=hit] run particle minecraft:witch ~ ~1 ~ 0.7 0.7 0.7 1 25 force @a
execute at @e[tag=hit] run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1.3 1.3

