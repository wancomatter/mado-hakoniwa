scoreboard players add @s counter 1
execute if score @s counter matches 15..30 run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 15..30 as @a if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/001/repeat
execute if score @s counter matches 15..30 run scoreboard players reset #dummy
execute if score @s counter matches 33.. run kill @s