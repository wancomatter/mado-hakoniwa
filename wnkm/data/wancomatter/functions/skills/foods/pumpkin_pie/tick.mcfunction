scoreboard players add @s counter 1
scoreboard players operation #dummy counter = @s counter
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=eat_pumpkin_pie] if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/foods/pumpkin_pie/p
scoreboard players reset #dummy
