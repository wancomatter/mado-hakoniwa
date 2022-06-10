scoreboard players add @s counter 1
execute if score @s counter matches 5.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 5.. as @a if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/048/charge
execute if score @s counter matches 5.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 5.. run scoreboard players set @s counter 0
execute if score @s counter matches 5.. run scoreboard players reset #dummy

execute if score @s subcounter matches 8.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s subcounter matches 8.. as @a if score @s playerNumber = #dummy playerNumber at @s run function wancomatter:skills/048/give_stew
execute if score @s subcounter matches 8.. run scoreboard players reset #dummy
execute if score @s subcounter matches 8.. run kill @s