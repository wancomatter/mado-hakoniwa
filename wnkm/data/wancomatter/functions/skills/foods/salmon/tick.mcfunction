scoreboard players add @s counter 1
scoreboard players operation #dummy counter = @s counter
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=eat_salmon] if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/foods/salmon/p
scoreboard players reset #dummy
