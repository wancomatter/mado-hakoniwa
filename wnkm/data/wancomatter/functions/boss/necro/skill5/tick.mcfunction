summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vector"],Duration:1}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute unless score #difficult counter matches 2..4 as @e[tag=vector] positioned as @s run tp @s ^ ^ ^0.050
execute if score #difficult counter matches 2 as @e[tag=vector] positioned as @s run tp @s ^ ^ ^0.060
execute if score #difficult counter matches 3 as @e[tag=vector] positioned as @s run tp @s ^ ^ ^0.080
execute if score #difficult counter matches 4 as @e[tag=vector] positioned as @s run tp @s ^ ^ ^0.110
execute as @e[tag=necro_s5pigman] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
execute at @e[tag=necro_s5pigman] run particle minecraft:dust 1 0.66 0 1 ~ ~0.9 ~ 0.2 0.6 0.2 1 4 normal @a
execute at @e[tag=necro_s5pigman] run particle minecraft:dust 1 0.66 0 1 ~ ~0.9 ~ 0.2 0.6 0.2 1 1 force @a

execute if entity @e[distance=..1.2,tag=necro_s5_target_pos,limit=1] run function wancomatter:boss/necro/skill5/explode
