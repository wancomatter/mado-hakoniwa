data modify storage wnkm:work Items set from entity @s Inventory

data modify storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:2b,Charged:0b}}].tag.bowgunCharged set value 0b
data remove storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,Charged:0b}}].tag.ChargedProjectiles

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from storage wnkm:work Items
data modify block 0 0 0 Items[{Slot:0b}] set from storage wnkm:work Items[{Slot:0b}]
loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}

setblock 0 0 0 air
data remove storage wnkm:work Items
