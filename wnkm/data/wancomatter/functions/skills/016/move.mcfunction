summon marker ~ ~ ~ {Tags:["discharge"]}
execute unless block ^ ^ ^1 #wancomatter:air run function wancomatter:skills/016/hit-block
execute unless entity @s[tag=heal-stop] positioned ^ ^ ^1 if entity @e[tag=wall_entity,dx=0,limit=1] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,dx=0,limit=1] at @s run function wancomatter:skills/016/hit-block
execute unless entity @s[tag=heal-stop] run tp @s ^ ^ ^1
scoreboard players add #dummy counter 1
execute unless score #dummy counter matches 50.. at @s run function wancomatter:skills/016/move