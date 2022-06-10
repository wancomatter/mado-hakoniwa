execute store result score #-- counter run data get entity @s AbsorptionAmount 10
scoreboard players add #-- counter 9
scoreboard players operation #-- counter /= #10 counter
scoreboard players operation #-- counter *= @s maxHP
scoreboard players operation #-- counter /= #2 counter
scoreboard players operation @s damageTaken -= #-- counter
