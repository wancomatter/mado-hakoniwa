scoreboard players remove @s dummy 1
execute unless block ^ ^ ^0.04 #wancomatter:air run scoreboard players set @s dummy -1
execute if entity @s[scores={dummy=0..}] positioned ^ ^ ^0.04 positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[dx=0,tag=wall_entity,limit=1] positioned ~-0.998 ~-0.998 ~-0.998 if entity @e[dx=0,tag=wall_entity,limit=1] run scoreboard players set @s dummy -2
execute unless entity @s[scores={dummy=1..}] run tp @s ~ ~ ~
execute if entity @s[scores={dummy=1..}] positioned ^ ^ ^0.04 run function wancomatter:skills/069/teleport
