execute if entity @s[distance=..2] run tag @s add 028flag
execute unless entity @s[tag=028flag] positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air run function wancomatter:skills/028/select_target_loop
