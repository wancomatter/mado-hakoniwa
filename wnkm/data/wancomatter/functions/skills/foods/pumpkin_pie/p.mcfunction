#scoreboard players operation #dummy dummy = @s ManaRegenCount
#scoreboard players operation #dummy dummy *= #3 counter
#scoreboard players operation #dummy dummy /= #5 counter
#scoreboard players operation @s ManaCount += #dummy dummy
scoreboard players operation @s ManaCount += @s ManaRegenCount
scoreboard players reset #dummy dummy
particle item pumpkin_pie ~ ~ ~ 1 1 1 0.1 4 normal @a
particle item pumpkin_pie ~ ~ ~ 1 1 1 0.1 1 force @a
execute if score #dummy counter matches 398 run function wancomatter:skills/foods/pumpkin_pie/end