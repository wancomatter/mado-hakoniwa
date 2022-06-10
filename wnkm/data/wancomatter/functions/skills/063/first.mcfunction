scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 84
scoreboard players set @s CooldownX_max 84
summon minecraft:marker ~ ~0.2 ~ {Tags:["first","stone_pillar"]}

execute positioned ~ ~1 ~ run tp @e[tag=first,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=first] at @s run function wancomatter:skills/037/check
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^2 0.2 0 0.2 1 4 normal @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^2 0.2 0 0.2 1 1 force @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^3.5 0.2 0 0.2 1 4 normal @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^3.5 0.2 0 0.2 1 1 force @a
execute at @e[tag=first] run playsound minecraft:entity.zombie.attack_wooden_door master @a ^ ^ ^2 1.5 0.5
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
