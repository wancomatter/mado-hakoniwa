execute unless block ^ ^ ^0.1 #wancomatter:putable run tag @s add 111-hit-block
execute positioned ^ ^ ^0.1 align xyz if entity @e[type=shulker,dx=0,dy=0,dz=0] run tag @s add 111-hit-block
execute if entity @s[tag=111-hit-block] run tp @s ~ ~ ~
scoreboard players add #dummy counter 1
execute unless entity @s[tag=111-hit-block] unless score #dummy counter matches 45.. positioned ^ ^ ^0.1 run function wancomatter:skills/111/move