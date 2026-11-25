playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
particle minecraft:heart ^ ^0.5 ^1.5 0 0 0 1 1 force @a
particle minecraft:heart ^ ^0.5 ^-1.5 0 0 0 1 1 force @a
particle minecraft:heart ^1.5 ^0.5 ^ 0 0 0 1 1 force @a
particle minecraft:heart ^-1.5 ^0.5 ^ 0 0 0 1 1 force @a
particle minecraft:heart ^ ^0.5 ^1.5 0.1 0.1 0.1 1 4 normal @a
particle minecraft:heart ^ ^0.5 ^-1.5 0.1 0.1 0.1 1 4 normal @a
particle minecraft:heart ^1.5 ^0.5 ^ 0.1 0.1 0.1 1 4 normal @a
particle minecraft:heart ^-1.5 ^0.5 ^ 0.1 0.1 0.1 1 4 normal @a
scoreboard players set #dummy HPheal 8
scoreboard players operation #dummy HPheal *= @s healPower
scoreboard players operation #dummy HPheal /= #100 counter
scoreboard players operation @s HPheal += #dummy HPheal
