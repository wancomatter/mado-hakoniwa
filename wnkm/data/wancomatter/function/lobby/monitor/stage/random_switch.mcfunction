scoreboard players add @s counter 1
execute if score @s counter matches 1 run data modify entity @s Item.components."minecraft:enchantment_glint_override" set value 1b
execute if score @s counter matches 2 run data remove entity @s Item.components."minecraft:enchantment_glint_override"
execute if score @s counter matches 2 run scoreboard players reset @s counter
