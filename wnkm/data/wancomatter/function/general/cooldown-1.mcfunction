setblock 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
data remove block 1024 0 1024 Items[0].components."minecraft:custom_data".usedSkillSlot
execute if data block 1024 0 1024 Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

scoreboard players reset @s Cooldown_slot
