execute if entity @s[distance=..2] run tag @s add 082flag
execute positioned ^ ^ ^1 positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run tag @s add 082end
execute unless entity @s[tag=082flag] unless entity @s[tag=082end] positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air run function wancomatter:skills/082/select_target_loop
