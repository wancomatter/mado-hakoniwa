execute unless block ^ ^ ^-0.15 #wancomatter:air run scoreboard players set #dummy dummy 1000
scoreboard players add #dummy dummy 1
execute if score #dummy dummy matches 19.. run tp @s ~ ~ ~
execute unless score #dummy dummy matches 19.. positioned ^ ^ ^-0.15 run function wancomatter:skills/077/tp_loop