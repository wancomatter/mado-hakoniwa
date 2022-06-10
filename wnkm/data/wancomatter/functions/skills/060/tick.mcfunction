scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute if score @s counter matches 20.. as @a[tag=p.death_counter] if score @s playerNumber = #dummy playerNumber run tag @s remove p.death_counter
scoreboard players reset #dummy
execute if score @s counter matches 23.. run kill @s