fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from entity @s Inventory[{Slot:-106b}]
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
data modify block 0 0 0 Items[0].tag.available set value 1b
data modify block 0 0 0 Items[0].id set value warped_fungus_on_a_stick
loot replace entity @s weapon.offhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
fill 0 0 0 0 0 0 minecraft:air

