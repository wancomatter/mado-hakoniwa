fill 0 0 0 1 0 0 minecraft:air
fill 1024 0 1024 1 0 0 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory
data modify block 1 0 0 Items set from entity @s Inventory
loot replace block 1 0 0 container.0 loot wancomatter:inv_copy
data modify block 1 0 0 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:27b}]
data modify block 1 0 0 Items[{Slot:1b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:28b}]
data modify block 1 0 0 Items[{Slot:2b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:29b}]
data modify block 1 0 0 Items[{Slot:3b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:30b}]
data modify block 1 0 0 Items[{Slot:4b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:31b}]
data modify block 1 0 0 Items[{Slot:5b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:32b}]
data modify block 1 0 0 Items[{Slot:6b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:33b}]
data modify block 1 0 0 Items[{Slot:7b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:34b}]
data modify block 1 0 0 Items[{Slot:8b}].components."minecraft:custom_data".Item set from entity @s Inventory[{Slot:35b}]

data modify block 1 0 0 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1 0 0 Items[{Slot:1b}].components."minecraft:custom_data".Item.Slot set value 1b
data modify block 1 0 0 Items[{Slot:2b}].components."minecraft:custom_data".Item.Slot set value 2b
data modify block 1 0 0 Items[{Slot:3b}].components."minecraft:custom_data".Item.Slot set value 3b
data modify block 1 0 0 Items[{Slot:4b}].components."minecraft:custom_data".Item.Slot set value 4b
data modify block 1 0 0 Items[{Slot:5b}].components."minecraft:custom_data".Item.Slot set value 5b
data modify block 1 0 0 Items[{Slot:6b}].components."minecraft:custom_data".Item.Slot set value 6b
data modify block 1 0 0 Items[{Slot:7b}].components."minecraft:custom_data".Item.Slot set value 7b
data modify block 1 0 0 Items[{Slot:8b}].components."minecraft:custom_data".Item.Slot set value 8b

data modify block 1 0 0 Items[{Slot:0b}] set from block 1 0 0 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:1b}] set from block 1 0 0 Items[{Slot:1b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:2b}] set from block 1 0 0 Items[{Slot:2b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:3b}] set from block 1 0 0 Items[{Slot:3b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:4b}] set from block 1 0 0 Items[{Slot:4b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:5b}] set from block 1 0 0 Items[{Slot:5b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:6b}] set from block 1 0 0 Items[{Slot:6b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:7b}] set from block 1 0 0 Items[{Slot:7b}].components."minecraft:custom_data".Item
data modify block 1 0 0 Items[{Slot:8b}] set from block 1 0 0 Items[{Slot:8b}].components."minecraft:custom_data".Item

loot replace entity @s container.0 mine 1 0 0 stick[custom_data={inv_copy:1b}]
loot replace entity @s container.27 mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
fill 0 0 0 1 0 0 minecraft:air
