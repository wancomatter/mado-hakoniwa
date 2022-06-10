execute store result score #dummy counter run data get entity @s SelectedItemSlot 1
execute if score #dummy counter matches 0 if data entity @s Inventory[{Slot:1b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:1b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 1 if data entity @s Inventory[{Slot:2b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:2b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 2 if data entity @s Inventory[{Slot:3b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:3b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 3 if data entity @s Inventory[{Slot:4b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:4b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 4 if data entity @s Inventory[{Slot:5b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:5b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 5 if data entity @s Inventory[{Slot:6b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:6b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 6 if data entity @s Inventory[{Slot:7b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:7b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot
execute if score #dummy counter matches 7 if data entity @s Inventory[{Slot:8b,tag:{onepoint_cast_available:1b}}] unless data entity @s Inventory[{Slot:8b}].tag.usedSkillSlot run tag @s add onepoint_cast_check_slot

#execute unless entity @s[tag=onepoint_cast_check_slot] run scoreboard players operation @s CooldownX *= #2 counter
#execute unless entity @s[tag=onepoint_cast_check_slot] run scoreboard players operation @s CooldownX_max *= #2 counter

execute if entity @s[tag=onepoint_cast_check_slot] run function wancomatter:general/bless/onepoint_cast_success

scoreboard players reset #dummy counter
