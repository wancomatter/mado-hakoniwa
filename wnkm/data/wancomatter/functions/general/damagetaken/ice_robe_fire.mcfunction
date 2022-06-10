execute if entity @s[tag=ice_robe_chest,tag=!ice_robe_legs] run scoreboard players operation @s damageTaken *= #8 counter
execute if entity @s[tag=!ice_robe_chest,tag=ice_robe_legs] run scoreboard players operation @s damageTaken *= #7 counter
execute if entity @s[tag=ice_robe_chest,tag=ice_robe_legs] run scoreboard players operation @s damageTaken *= #10 counter
scoreboard players operation @s damageTaken /= #5 counter
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 0.5
