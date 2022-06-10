execute store result score #dummy counter run data get entity @s SelectedItemSlot 1
execute if score #dummy counter matches 0 if data entity @s Inventory[{Slot:1b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 1 if data entity @s Inventory[{Slot:2b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 2 if data entity @s Inventory[{Slot:3b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 3 if data entity @s Inventory[{Slot:4b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 4 if data entity @s Inventory[{Slot:5b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 5 if data entity @s Inventory[{Slot:6b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 6 if data entity @s Inventory[{Slot:7b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
execute if score #dummy counter matches 7 if data entity @s Inventory[{Slot:8b,tag:{double_cast_available:1b}}] run tag @s add double_cast_use
scoreboard players reset #dummy counter

execute if entity @s[tag=double_cast_use] run function wancomatter:general/bless/double_cast_first_use