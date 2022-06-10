scoreboard players add @s counter 1
execute if score @s counter matches 1 run data modify entity @s Item.tag.Enchantments set value [{}]
execute if score @s counter matches 2 run data remove entity @s Item.tag.Enchantments
execute if score @s counter matches 2 run scoreboard players reset @s counter