summon area_effect_cloud ~ ~ ~ {Tags:["179this"],Duration:1}
tag @s add 179
execute as @e[distance=..6,tag=Battle] run function wancomatter:skills/027/schedule/1-loop
tag @s remove 179
tag @e[tag=179this] remove 179this

execute if entity @e[tag=hit,limit=1] at @e[tag=hit,limit=1] run tp @s ~ ~0.6 ~
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
