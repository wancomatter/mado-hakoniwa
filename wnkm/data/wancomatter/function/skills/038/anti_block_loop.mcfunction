scoreboard players remove @s dummy 1
execute unless block ~ ~ ~ #wancomatter:air run tag @s add in_block
execute unless block ~ ~1 ~ #wancomatter:air run tag @s add in_block
execute unless entity @s[tag=in_block] unless score @s dummy matches 1.. unless entity @e[tag=this2,limit=1,distance=..0.1] positioned ^ ^ ^0.1 run function wancomatter:skills/038/anti_block_loop
