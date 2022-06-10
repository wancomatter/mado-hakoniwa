summon area_effect_cloud ~ ~ ~ {Tags:["073dummyAEC"],Radius:0.0f,Duration:1,Particle:"minecraft:dust 0 0 0 0",Effects:[{}]}
data modify entity @e[tag=073dummyAEC,limit=1] Effects set from entity @s ActiveEffects
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:10}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:11}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:12}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:13}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:17}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:22}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:23}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:27}]
execute as @e[tag=073dummyAEC,limit=1] run data remove entity @s Effects[{Id:30}]
execute as @e[tag=073dummyAEC,limit=1] unless data entity @s Effects[{}].Id run kill @s

execute unless entity @e[tag=073dummyAEC,limit=1] run function wancomatter:skills/073/fail2
execute if entity @s[tag=!failed] run function wancomatter:skills/073/hit
kill @e[tag=073dummyAEC]
tag @e[tag=hit] remove hit
