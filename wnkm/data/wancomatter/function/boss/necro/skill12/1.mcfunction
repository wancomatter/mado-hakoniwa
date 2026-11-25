particle witch ~ ~ ~ 0.4 0.4 0.4 1 8 normal @a
particle witch ~ ~ ~ 0.2 0.2 0.2 1 2 force @a
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.2 4 normal @a
particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.2 1 force @a
tp @s ^ ^ ^0.33
execute if entity @s[tag=necro_s12AEC_base] run scoreboard players add @s counter 17
execute if entity @s[tag=necro_s12AEC_base] if score @s counter matches 180.. run scoreboard players remove @s counter 360
execute if entity @s[tag=necro_s12AEC_base] store result entity @e[tag=necro,limit=1] Rotation[0] float 1 run scoreboard players get @s counter
