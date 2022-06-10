scoreboard players add #dummy dummy 1
execute unless block ^ ^ ^-0.3 #wancomatter:air run tp @s ~ ~ ~
execute if score #dummy dummy matches 6 run tp @s ~ ~ ~
execute if score #dummy dummy matches ..5 if block ^ ^ ^-0.3 #wancomatter:air positioned ^ ^ ^-0.3 run function wancomatter:skills/061/slash_tp
