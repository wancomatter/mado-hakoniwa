tag @s remove eat_bread
scoreboard players operation @s damageTaken *= #3 counter
scoreboard players operation @s damageTaken /= #2 counter
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1.5 0.5

scoreboard players set #dummy HPheal 130
scoreboard players operation #dummy HPheal *= @s healPower
scoreboard players operation #dummy HPheal /= #100 counter
scoreboard players operation @s HPheal += #dummy HPheal
scoreboard players reset #dummy HPheal
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 100 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 25 force @a
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.5 1.8
particle minecraft:composter ~ ~1 ~ 1 1 1 1 60 normal @a
particle minecraft:composter ~ ~1 ~ 1 1 1 1 15 force @a

