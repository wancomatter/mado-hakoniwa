scoreboard players add @s dummy 1
execute unless block ~ ~-1 ~ #wancomatter:air positioned ~ ~-1 ~ align y run tp @s ~ ~0.5 ~
execute unless score @s dummy matches 10.. if block ~ ~-1 ~ #wancomatter:air positioned ~ ~-1 ~ run function wancomatter:skills/037/check
