scoreboard players add @s subcounter 1
particle flame ^ ^0.1 ^9 0 0 0 0 1 force @a
particle flame ^ ^0.1 ^9 0.15 0.15 0.15 0 3 normal @a
execute unless score @s subcounter matches 40.. rotated ~9 0 run function wancomatter:boss/dusk/skill0/tick51-loop
