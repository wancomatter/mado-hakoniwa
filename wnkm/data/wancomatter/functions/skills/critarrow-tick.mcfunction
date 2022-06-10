summon area_effect_cloud 0.0 0.0 0.0 {Tags:["arrow_vector"],Duration:1}
data modify entity @e[tag=arrow_vector,limit=1,x=0,y=0,z=0,distance=..1] Pos set from entity @s Motion

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["this__target"],Duration:1}
execute positioned 0.0 0.0 0.0 facing entity @e[tag=arrow_vector,limit=1,sort=nearest] feet run tp @e[tag=this__target] ~ ~ ~ ~ ~
execute at @e[tag=this__target] if entity @e[distance=8..16,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s dummy 16
execute as @e[tag=this__target] at @s if entity @e[distance=8..16,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^8
execute at @e[tag=this__target] if entity @e[distance=4..8,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s dummy 8
execute as @e[tag=this__target] at @s if entity @e[distance=4..8,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^4
execute at @e[tag=this__target] if entity @e[distance=2..4,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s dummy 4
execute as @e[tag=this__target] at @s if entity @e[distance=2..4,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^2
execute at @e[tag=this__target] if entity @e[distance=1..2,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s dummy 2
execute as @e[tag=this__target] at @s if entity @e[distance=1..2,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^1
execute at @e[tag=this__target] if entity @e[distance=0.5..1,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s dummy 1
execute as @e[tag=this__target] at @s if entity @e[distance=0.5..1,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.5

execute rotated as @e[tag=this__target,limit=1] run function wancomatter:skills/critarrow-particle
kill @e[tag=this__target]
kill @e[tag=arrow_vector]
