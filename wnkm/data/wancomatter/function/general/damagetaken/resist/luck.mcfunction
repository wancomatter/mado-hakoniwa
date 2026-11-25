scoreboard players set #-- counter 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:0}]}] run scoreboard players set #-- counter 9
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:1}]}] run scoreboard players set #-- counter 8
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:2}]}] run scoreboard players set #-- counter 7
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:3}]}] run scoreboard players set #-- counter 6
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:4}]}] run scoreboard players set #-- counter 5
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:5}]}] run scoreboard players set #-- counter 4
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:6}]}] run scoreboard players set #-- counter 3
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:7}]}] run scoreboard players set #-- counter 2
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:8}]}] run scoreboard players set #-- counter 1
scoreboard players operation @s damageTaken *= #-- counter
scoreboard players set #-- counter 10
scoreboard players operation @s damageTaken /= #-- counter
