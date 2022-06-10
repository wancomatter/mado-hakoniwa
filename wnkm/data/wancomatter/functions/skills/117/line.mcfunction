scoreboard players add #dummy counter 1
particle minecraft:dust 0.3 0.4 1.0 0.4 ~ ~ ~ 0 0 0 1 1 force @a
execute unless entity @e[tag=this,limit=1,distance=..0.32] unless score #dummy counter matches 80.. positioned ^ ^ ^0.4 run function wancomatter:skills/117/line