playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 52 normal @a
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 13 force @a
execute as @e[tag=pumpkin_pie_AEC,scores={counter=..397}] if score @s playerNumber = #dummy playerNumber run tag @s add flag
execute unless entity @e[tag=flag,limit=1] run tag @s remove eat_pumpkin_pie
execute if entity @e[tag=flag,limit=1] run tag @e[tag=flag] remove flag
