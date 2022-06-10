#fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
#loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
#data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
#data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
#data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
#data modify block 0 0 0 Items[0].tag.double_cast_first set value 2b
#loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{inv_copy:1b}
#setblock 0 0 0 air
item modify entity @s weapon.mainhand wancomatter:double_cast/2

scoreboard players operation @s CooldownX *= #3 counter
scoreboard players operation @s CooldownX /= #2 counter
scoreboard players operation @s CooldownX_max *= #3 counter
scoreboard players operation @s CooldownX_max /= #2 counter

