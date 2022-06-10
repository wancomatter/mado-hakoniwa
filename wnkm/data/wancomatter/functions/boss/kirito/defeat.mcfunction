tag @s add b2s21used
tag @s add b2s22used
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:kirito

kill @e[tag=b2]
kill @e[tag=kiritostand]
kill @s