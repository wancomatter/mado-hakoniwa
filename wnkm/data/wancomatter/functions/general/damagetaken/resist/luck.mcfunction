scoreboard players set #-- counter 0
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:0b}]}] run scoreboard players set #-- counter 9
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:1b}]}] run scoreboard players set #-- counter 8
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:2b}]}] run scoreboard players set #-- counter 7
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:3b}]}] run scoreboard players set #-- counter 6
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:4b}]}] run scoreboard players set #-- counter 5
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:5b}]}] run scoreboard players set #-- counter 4
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:6b}]}] run scoreboard players set #-- counter 3
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:7b}]}] run scoreboard players set #-- counter 2
execute if entity @s[nbt={ActiveEffects:[{Id:26b,Amplifier:8b}]}] run scoreboard players set #-- counter 1
scoreboard players operation @s damageTaken *= #-- counter
scoreboard players set #-- counter 10
scoreboard players operation @s damageTaken /= #-- counter