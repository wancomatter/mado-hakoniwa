summon area_effect_cloud ~ ~ ~ {Tags:["073dummyAEC"],Radius:0.0f,Duration:1,Particle:"minecraft:dust 0 0 0 0",Effects:[{}]}
data modify entity @e[tag=073dummyAEC,limit=1] Effects set from entity @s ActiveEffects
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:10b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:11b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:12b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:13b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:17b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:22b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:23b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:27b}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:30b}]
execute as @e[tag=073dummyAEC,limit=1] unless data entity @s Effects[{}].Id run kill @s

execute unless entity @e[tag=073dummyAEC,limit=1] run function wancomatter:skills/073/fail2
execute if entity @s[tag=!failed] run function wancomatter:skills/073/hit
kill @e[tag=073dummyAEC]
tag @e[tag=hit] remove hit
