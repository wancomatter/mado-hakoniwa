execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:bow"}]} store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".LegacySkill
execute if data entity @s {SelectedItem:{id:"minecraft:bow"}} store result score @s dummy run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill
execute if score @s dummy matches 1.. at @s run function wancomatter:skills/bow-launcher
scoreboard players reset @s dummy
