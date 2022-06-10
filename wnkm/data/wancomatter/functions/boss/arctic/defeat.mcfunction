tag @s add b3s21used
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:arctic
kill @e[tag=arctic_stand]

kill @s