scoreboard players set #-- counter 0
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:0b}]}] run scoreboard players set #-- counter 9
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:1b}]}] run scoreboard players set #-- counter 8
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:2b}]}] run scoreboard players set #-- counter 7
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:3b}]}] run scoreboard players set #-- counter 6
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:4b}]}] run scoreboard players set #-- counter 5
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:5b}]}] run scoreboard players set #-- counter 4
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:6b}]}] run scoreboard players set #-- counter 3
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:7b}]}] run scoreboard players set #-- counter 2
execute if entity @s[nbt={ActiveEffects:[{Id:26,Amplifier:8b}]}] run scoreboard players set #-- counter 1
scoreboard players operation @s damageTaken *= #-- counter
scoreboard players set #-- counter 10
scoreboard players operation @s damageTaken /= #-- counter