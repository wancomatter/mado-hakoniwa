scoreboard players set #dummy counter 0
execute if data entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:2b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:3b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:4b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:5b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:6b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:7b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:8b}].components."minecraft:custom_data".star_magic run scoreboard players add #dummy counter 1
scoreboard players set #dummy Mana 10
scoreboard players operation #dummy Mana *= #dummy counter
execute unless score @s Mana >= #dummy Mana run function wancomatter:skills/fail
execute if score @s Mana >= #dummy Mana run function wancomatter:skills/018/first

scoreboard players reset #dummy
