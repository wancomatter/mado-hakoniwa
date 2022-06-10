scoreboard players add @s subcounter 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.2 4 normal @a
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s subcounter 410
execute if score @s subcounter matches 400.. run tp @s ~ ~ ~
execute unless score @s subcounter matches 400.. positioned ^ ^ ^0.25 run function wancomatter:skills/009/razer_loop