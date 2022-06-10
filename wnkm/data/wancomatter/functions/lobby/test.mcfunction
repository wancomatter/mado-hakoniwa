fill 0 0 0 1 0 0 minecraft:air
fill 0 0 0 1 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory
data modify block 1 0 0 Items set from entity @s Inventory
loot replace block 1 0 0 container.0 loot wancomatter:inv_copy
data modify block 1 0 0 Items[{Slot:0b}].tag.Item set from entity @s Inventory[{Slot:27b}]
data modify block 1 0 0 Items[{Slot:1b}].tag.Item set from entity @s Inventory[{Slot:28b}]
data modify block 1 0 0 Items[{Slot:2b}].tag.Item set from entity @s Inventory[{Slot:29b}]
data modify block 1 0 0 Items[{Slot:3b}].tag.Item set from entity @s Inventory[{Slot:30b}]
data modify block 1 0 0 Items[{Slot:4b}].tag.Item set from entity @s Inventory[{Slot:31b}]
data modify block 1 0 0 Items[{Slot:5b}].tag.Item set from entity @s Inventory[{Slot:32b}]
data modify block 1 0 0 Items[{Slot:6b}].tag.Item set from entity @s Inventory[{Slot:33b}]
data modify block 1 0 0 Items[{Slot:7b}].tag.Item set from entity @s Inventory[{Slot:34b}]
data modify block 1 0 0 Items[{Slot:8b}].tag.Item set from entity @s Inventory[{Slot:35b}]

data modify block 1 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 1 0 0 Items[{Slot:1b}].tag.Item.Slot set value 1b
data modify block 1 0 0 Items[{Slot:2b}].tag.Item.Slot set value 2b
data modify block 1 0 0 Items[{Slot:3b}].tag.Item.Slot set value 3b
data modify block 1 0 0 Items[{Slot:4b}].tag.Item.Slot set value 4b
data modify block 1 0 0 Items[{Slot:5b}].tag.Item.Slot set value 5b
data modify block 1 0 0 Items[{Slot:6b}].tag.Item.Slot set value 6b
data modify block 1 0 0 Items[{Slot:7b}].tag.Item.Slot set value 7b
data modify block 1 0 0 Items[{Slot:8b}].tag.Item.Slot set value 8b

data modify block 1 0 0 Items[{Slot:0b}] set from block 1 0 0 Items[{Slot:0b}].tag.Item
data modify block 1 0 0 Items[{Slot:1b}] set from block 1 0 0 Items[{Slot:1b}].tag.Item
data modify block 1 0 0 Items[{Slot:2b}] set from block 1 0 0 Items[{Slot:2b}].tag.Item
data modify block 1 0 0 Items[{Slot:3b}] set from block 1 0 0 Items[{Slot:3b}].tag.Item
data modify block 1 0 0 Items[{Slot:4b}] set from block 1 0 0 Items[{Slot:4b}].tag.Item
data modify block 1 0 0 Items[{Slot:5b}] set from block 1 0 0 Items[{Slot:5b}].tag.Item
data modify block 1 0 0 Items[{Slot:6b}] set from block 1 0 0 Items[{Slot:6b}].tag.Item
data modify block 1 0 0 Items[{Slot:7b}] set from block 1 0 0 Items[{Slot:7b}].tag.Item
data modify block 1 0 0 Items[{Slot:8b}] set from block 1 0 0 Items[{Slot:8b}].tag.Item

loot replace entity @s container.0 mine 1 0 0 minecraft:air{inv_copy:1b}
loot replace entity @s container.27 mine 0 0 0 minecraft:air{inv_copy:1b}
fill 0 0 0 1 0 0 minecraft:air
