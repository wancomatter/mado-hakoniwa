execute if entity @e[tag=detonator,limit=1] as @e[tag=detonator] at @s run function wancomatter:boss/detonator/tick
execute if entity @e[tag=detonator,limit=1] run function wancomatter:boss/detonator/subtick

execute if entity @e[tag=kirito,limit=1] as @e[tag=kirito] at @s rotated ~-90 ~ run function wancomatter:boss/kirito/tick
execute if entity @e[tag=kirito,limit=1] run function wancomatter:boss/kirito/subtick

execute if entity @e[tag=dusk,limit=1] as @e[tag=dusk] at @s run function wancomatter:boss/dusk/tick
execute if entity @e[tag=dusk,limit=1] run function wancomatter:boss/dusk/subtick

execute if entity @e[tag=necro,limit=1] as @e[tag=necro] at @s run function wancomatter:boss/necro/tick
execute if entity @e[tag=necro_stand_r,limit=1] as @e[tag=necro_stand_r,scores={counter=1..}] at @s run function wancomatter:boss/necro/pose
execute if entity @e[tag=necro_stand_l,limit=1] as @e[tag=necro_stand_l,scores={counter=1..}] at @s run function wancomatter:boss/necro/pose
execute if entity @e[tag=necro,limit=1] run function wancomatter:boss/necro/subtick

execute if entity @e[tag=bear_p,limit=1] as @e[tag=bear_p] at @s run function wancomatter:boss/bear/papa/tick
execute if entity @e[tag=bear_c,limit=1] as @e[tag=bear_c] at @s run function wancomatter:boss/bear/child/tick
execute if entity @e[tag=bear,limit=1] run function wancomatter:boss/bear/subtick

execute if entity @e[tag=dragon1_stand_body,limit=1] as @e[tag=dragon1_stand_body] at @s run function wancomatter:boss/dragon/tick
execute if entity @e[tag=dragon1_stand_body,limit=1] run function wancomatter:boss/dragon/subtick

