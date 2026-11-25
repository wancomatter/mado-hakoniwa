scoreboard players add @s counter 1
execute if score @s counter matches 7.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 7.. as @a if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/050/attack
execute if score @s counter matches 7.. run scoreboard players reset #dummy
execute if score @s counter matches 7.. run kill @s
