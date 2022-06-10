execute unless block ^ ^ ^0.3 #wancomatter:air run function wancomatter:skills/046/hit-block
execute unless entity @s[tag=lightning-stop] positioned ~-0.5 ~-0.5 ~-0.5 positioned ^ ^ ^0.3 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-0.3 run function wancomatter:skills/046/hit-block
execute unless entity @s[tag=lightning-stop] run tp @s ^ ^ ^0.3
scoreboard players add #dummy counter 1
execute unless score #dummy counter matches 133.. at @s run function wancomatter:skills/046/move