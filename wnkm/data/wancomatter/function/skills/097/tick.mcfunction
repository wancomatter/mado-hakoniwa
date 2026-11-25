scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add Awakening-player
execute as @a[tag=Awakening-player] unless score @s damageBoost matches 1.. run scoreboard players set @s damageBoost 25
execute at @a[tag=Awakening-player] run particle minecraft:explosion ~ ~-1 ~ 2 0.5 2 0 1 force @a
execute at @a[tag=Awakening-player] run particle minecraft:flame ~ ~ ~ 1 1 1 0.2 2 normal @a
execute if score @s counter matches 240.. at @a[tag=Awakening-player] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1
execute if score @s counter matches 240.. at @a[tag=Awakening-player] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.2 180 normal @a
execute if score @s counter matches 240.. at @a[tag=Awakening-player] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 45 normal @a
execute if score @s counter matches 240.. run scoreboard players remove @a[tag=Awakening-player] damageBoost 25
tag @a[tag=Awakening-player] remove Awakening-player
execute if score @s counter matches 240.. run kill @s
