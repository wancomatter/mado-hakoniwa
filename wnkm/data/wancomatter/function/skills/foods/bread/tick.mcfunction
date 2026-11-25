scoreboard players operation #dummy playerNumber = @s playerNumber
tag @s add now
execute as @a[tag=eat_bread] if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/foods/bread/p
tag @s remove now
scoreboard players reset #dummy
