execute store result score #-- counter run data get entity @a[tag=hurtBy,limit=1] ActiveEffects[{Id:29}].Amplifier
scoreboard players add #-- counter 1
scoreboard players operation @s damageTaken += #-- counter
scoreboard players reset #--
