scoreboard players set #-- counter 100
scoreboard players operation #-- counter -= @s blastResist
scoreboard players operation @s damageTaken *= #-- counter
scoreboard players set #-- counter 100
scoreboard players operation @s damageTaken /= #-- counter
scoreboard players reset #--