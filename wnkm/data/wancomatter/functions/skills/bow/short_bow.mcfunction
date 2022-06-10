summon area_effect_cloud 0.0 0.0 0.0 {Tags:["arrow_vector"],Duration:1}
data modify entity @e[tag=arrow_vector,limit=1,x=0,y=0,z=0,distance=..1] Pos set from entity @s Motion

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["arrow_distance"],Duration:1}
execute positioned 0.0 0.0 0.0 facing entity @e[tag=arrow_vector,limit=1,sort=nearest] feet run tp @e[tag=arrow_distance] ~ ~ ~ ~ ~

execute at @e[tag=arrow_distance] if entity @e[distance=5.12..10.24,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 512
execute as @e[tag=arrow_distance] at @s if entity @e[distance=5.12..10.24,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^5.12
execute at @e[tag=arrow_distance] if entity @e[distance=2.56..5.12,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 256
execute as @e[tag=arrow_distance] at @s if entity @e[distance=2.56..5.12,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^2.56
execute at @e[tag=arrow_distance] if entity @e[distance=1.28..2.56,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 128
execute as @e[tag=arrow_distance] at @s if entity @e[distance=1.28..2.56,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^1.28
execute at @e[tag=arrow_distance] if entity @e[distance=0.64..1.28,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 64
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.64..1.28,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.64
execute at @e[tag=arrow_distance] if entity @e[distance=0.32..0.64,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 32
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.32..0.64,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.32
execute at @e[tag=arrow_distance] if entity @e[distance=0.16..0.32,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 16
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.16..0.32,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.16
execute at @e[tag=arrow_distance] if entity @e[distance=0.08..0.16,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 8
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.08..0.16,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.08
execute at @e[tag=arrow_distance] if entity @e[distance=0.04..0.08,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 4
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.04..0.08,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.04
execute at @e[tag=arrow_distance] if entity @e[distance=0.02..0.04,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 2
execute as @e[tag=arrow_distance] at @s if entity @e[distance=0.02..0.04,tag=arrow_vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.02
execute at @e[tag=arrow_distance] if entity @e[distance=0.01..0.02,tag=arrow_vector,limit=1,sort=nearest] run scoreboard players add @s counter 1

execute rotated as @e[tag=arrow_distance,limit=1] run function wancomatter:skills/bow/short_bow_2
data merge entity @s {crit:1b}
kill @e[tag=arrow_distance]
kill @e[tag=arrow_vector]
