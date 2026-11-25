scoreboard players remove @s dummy 1
execute positioned ^ ^ ^-0.22 if block ~ ~1 ~ #wancomatter:air run scoreboard players reset @s dummy
execute unless score @s dummy matches 1.. run tp @s ^ ^ ^0.22
execute if score @s dummy matches 1.. positioned ^ ^ ^0.22 run function wancomatter:skills/066/tp
