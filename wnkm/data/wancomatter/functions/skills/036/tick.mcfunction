scoreboard players add @s counter 1
execute if score @s counter matches 500.. run fill ~1.5 ~0.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 minecraft:air replace minecraft:water
execute if score @s counter matches 500.. run fill ~1.5 ~0.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 minecraft:air replace minecraft:structure_void
execute if score @s counter matches 500.. run fill ~1.5 ~0.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 minecraft:air replace minecraft:frosted_ice
execute if score @s counter matches 500.. run fill ~1.5 ~0.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 minecraft:air replace minecraft:ice
execute if score @s counter matches 500.. run kill @s