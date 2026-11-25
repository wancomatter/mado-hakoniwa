scoreboard players remove @s dummy 1
particle crit ^ ^ ^-0.5 0 0 0 0 1 force @a
execute if score @s dummy matches 0.. positioned ^ ^ ^-0.5 run function wancomatter:skills/critarrow-particle
