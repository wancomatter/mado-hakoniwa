fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
data remove block 1024 0 1024 Items[0].components."minecraft:custom_data".available
data modify block 1024 0 1024 Items[0].id set value golden_hoe
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
fill 1024 0 1024 1024 0 1024 minecraft:air
