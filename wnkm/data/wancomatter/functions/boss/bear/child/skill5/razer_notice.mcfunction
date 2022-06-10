scoreboard players add @s subcounter 1
particle crit ~ ~0.3 ~ 0.3 0.6 0.3 0.3 3 normal @a
particle crit ~ ~0.3 ~ 0.1 0.3 0.1 0.3 1 force @a
execute unless score @s subcounter matches 100.. positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air run function wancomatter:boss/bear/child/skill5/razer_notice