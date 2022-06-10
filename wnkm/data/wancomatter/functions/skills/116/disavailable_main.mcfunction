fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
data remove block 0 0 0 Items[0].tag.darkRepulser_available
data modify block 0 0 0 Items[0].id set value diamond_sword
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
fill 0 0 0 0 0 0 minecraft:air

