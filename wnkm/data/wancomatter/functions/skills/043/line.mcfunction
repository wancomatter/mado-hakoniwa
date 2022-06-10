scoreboard players add #dummy counter 1
particle minecraft:dust 0.7 0.7 0.7 0.4 ~ ~ ~ 0 0 0 1 1 force @a
execute if entity @e[tag=this,limit=1,distance=..0.32] as @e[tag=this,limit=1,sort=nearest] rotated ~ 0 run function wancomatter:skills/043/line2
execute unless entity @e[tag=this,limit=1,distance=..0.32] unless score #dummy counter matches 50.. positioned ^ ^ ^0.4 run function wancomatter:skills/043/line