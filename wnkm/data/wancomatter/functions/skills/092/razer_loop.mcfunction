scoreboard players add @s subcounter 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s subcounter 410
execute if score @s subcounter matches 400.. run tp @s ~ ~ ~
execute unless score @s subcounter matches 400.. positioned ^ ^ ^0.25 run function wancomatter:skills/092/razer_loop