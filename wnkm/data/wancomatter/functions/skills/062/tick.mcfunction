scoreboard players add @s counter 1
scoreboard players set @s dummy 24
execute if score @s counter matches 3..11 positioned ~ ~0.3 ~ run function wancomatter:skills/062/particle_tick
execute if score @s counter matches 11.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 11.. as @a if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/062/attack
execute if score @s counter matches 11.. run scoreboard players reset #dummy
execute if score @s counter matches 11.. run kill @s
