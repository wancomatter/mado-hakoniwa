execute if score @s s12slot matches 0 run scoreboard players add @s Cooldown1 401
execute if score @s s12slot matches 0 run scoreboard players operation @s Cooldown1_max = @s Cooldown1
execute if score @s s12slot matches 1 run scoreboard players add @s Cooldown2 401
execute if score @s s12slot matches 1 run scoreboard players operation @s Cooldown2_max = @s Cooldown2
execute if score @s s12slot matches 2 run scoreboard players add @s Cooldown3 401
execute if score @s s12slot matches 2 run scoreboard players operation @s Cooldown3_max = @s Cooldown3
execute if score @s s12slot matches 3 run scoreboard players add @s Cooldown4 401
execute if score @s s12slot matches 3 run scoreboard players operation @s Cooldown4_max = @s Cooldown4
execute if score @s s12slot matches 4 run scoreboard players add @s Cooldown5 401
execute if score @s s12slot matches 4 run scoreboard players operation @s Cooldown5_max = @s Cooldown5
execute if score @s s12slot matches 5 run scoreboard players add @s Cooldown6 401
execute if score @s s12slot matches 5 run scoreboard players operation @s Cooldown6_max = @s Cooldown6
execute if score @s s12slot matches 6 run scoreboard players add @s Cooldown7 401
execute if score @s s12slot matches 6 run scoreboard players operation @s Cooldown7_max = @s Cooldown7
execute if score @s s12slot matches 7 run scoreboard players add @s Cooldown8 401
execute if score @s s12slot matches 7 run scoreboard players operation @s Cooldown8_max = @s Cooldown8
execute if score @s s12slot matches 8 run scoreboard players add @s Cooldown9 401
execute if score @s s12slot matches 8 run scoreboard players operation @s Cooldown9_max = @s Cooldown9
scoreboard players add @s s12slot 1

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
data modify storage wnkm:work Items set from entity @s Inventory
execute store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}].tag.usedSkillSlot byte 1 run scoreboard players get @s s12slot

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from storage wnkm:work Items
loot replace entity @s container.0 27 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 0 0 0 Items[{Slot:1b}].tag.Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 0 0 0 Items[{Slot:2b}].tag.Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 0 0 0 Items[{Slot:3b}].tag.Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 0 0 0 Items[{Slot:4b}].tag.Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 0 0 0 Items[{Slot:5b}].tag.Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 0 0 0 Items[{Slot:6b}].tag.Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 0 0 0 Items[{Slot:7b}].tag.Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 0 0 0 Items[{Slot:8b}].tag.Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:1b}].tag.Item.Slot set value 1b
data modify block 0 0 0 Items[{Slot:2b}].tag.Item.Slot set value 2b
data modify block 0 0 0 Items[{Slot:3b}].tag.Item.Slot set value 3b
data modify block 0 0 0 Items[{Slot:4b}].tag.Item.Slot set value 4b
data modify block 0 0 0 Items[{Slot:5b}].tag.Item.Slot set value 5b
data modify block 0 0 0 Items[{Slot:6b}].tag.Item.Slot set value 6b
data modify block 0 0 0 Items[{Slot:7b}].tag.Item.Slot set value 7b
data modify block 0 0 0 Items[{Slot:8b}].tag.Item.Slot set value 8b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{Slot:1b}] set from block 0 0 0 Items[{Slot:1b}].tag.Item
data modify block 0 0 0 Items[{Slot:2b}] set from block 0 0 0 Items[{Slot:2b}].tag.Item
data modify block 0 0 0 Items[{Slot:3b}] set from block 0 0 0 Items[{Slot:3b}].tag.Item
data modify block 0 0 0 Items[{Slot:4b}] set from block 0 0 0 Items[{Slot:4b}].tag.Item
data modify block 0 0 0 Items[{Slot:5b}] set from block 0 0 0 Items[{Slot:5b}].tag.Item
data modify block 0 0 0 Items[{Slot:6b}] set from block 0 0 0 Items[{Slot:6b}].tag.Item
data modify block 0 0 0 Items[{Slot:7b}] set from block 0 0 0 Items[{Slot:7b}].tag.Item
data modify block 0 0 0 Items[{Slot:8b}] set from block 0 0 0 Items[{Slot:8b}].tag.Item
loot replace entity @s container.27 9 mine 0 0 0 air{inv_copy:1b}

setblock 0 0 0 air
data remove storage wnkm:work Items

scoreboard players remove @s s12slot 1
tag @s remove hide-focused