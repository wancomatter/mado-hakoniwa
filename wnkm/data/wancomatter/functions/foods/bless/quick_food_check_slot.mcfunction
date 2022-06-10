execute store result score #dummy counter run data get entity @s SelectedItemSlot 1
execute if score #dummy counter matches 0 if data entity @s Inventory[{Slot:1b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:1b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 1 if data entity @s Inventory[{Slot:2b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:2b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 2 if data entity @s Inventory[{Slot:3b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:3b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 3 if data entity @s Inventory[{Slot:4b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:4b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 4 if data entity @s Inventory[{Slot:5b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:5b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 5 if data entity @s Inventory[{Slot:6b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:6b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 6 if data entity @s Inventory[{Slot:7b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:7b}].tag.usedSkillSlot run tag @s add diet
execute if score #dummy counter matches 7 if data entity @s Inventory[{Slot:8b,tag:{quick_food_available:1b}}] unless data entity @s Inventory[{Slot:8b}].tag.usedSkillSlot run tag @s add diet

execute if entity @s[tag=diet] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 2
scoreboard players reset #dummy counter
