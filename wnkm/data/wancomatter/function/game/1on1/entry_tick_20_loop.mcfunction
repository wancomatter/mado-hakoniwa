particle minecraft:end_rod ^ ^ ^5 0 0 0 0.003 1 force @a
particle minecraft:end_rod ^ ^ ^-5 0 0 0 0.003 1 force @a
particle minecraft:end_rod ^5 ^ ^ 0 0 0 0.003 1 force @a
particle minecraft:end_rod ^-5 ^ ^ 0 0 0 0.003 1 force @a
scoreboard players remove @s counter 1
execute if score @s counter matches 1.. rotated ~4.8 0 run function wancomatter:game/1on1/entry_tick_20_loop
