# 毎tickスコア減少
scoreboard players remove @s Cooldown1 1
execute if score @s Cooldown1 matches 0 run data modify entity @s NoAI set value 0b
