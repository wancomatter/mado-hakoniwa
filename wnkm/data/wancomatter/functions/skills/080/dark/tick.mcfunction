scoreboard players add @s counter 1
scoreboard players set @s dummy 24
execute if score @s counter matches 1..19 positioned ~ ~0.3 ~ run function wancomatter:skills/080/dark/particle_tick
execute if score @s counter matches 20.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 20.. as @a if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/080/dark/attack
execute if score @s counter matches 20.. run scoreboard players reset #dummy
execute if score @s counter matches 20.. run kill @s
