execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]} store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if data entity @s {SelectedItem:{id:"minecraft:crossbow"}} store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 1.. if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Enchantments:[{id:"fire_aspect",lvl:1s}]}}]} run tag @s add fire_crossbow
execute if score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"fire_aspect",lvl:1s}]}}} run tag @s add fire_crossbow
execute if score @s dummy matches 1.. at @s run function wancomatter:skills/crossbow-launcher
scoreboard players reset @s dummy