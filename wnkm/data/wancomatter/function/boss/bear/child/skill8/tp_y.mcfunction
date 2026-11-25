scoreboard players add @s subcounter 1
execute unless block ~ ~1 ~ minecraft:air run tp @s ~ ~ ~
execute if score @s subcounter matches 15.. run tp @s ~ ~ ~
execute unless score @s subcounter matches 15.. if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~ run function wancomatter:boss/bear/child/skill8/tp_y
