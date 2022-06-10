scoreboard players add @s subcounter 1
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 2 force @a
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s subcounter 410
execute if score @s subcounter matches 400.. run function wancomatter:skills/009/second_loop_end
execute unless score @s subcounter matches 400.. positioned ^ ^ ^0.25 run function wancomatter:skills/009/second_loop