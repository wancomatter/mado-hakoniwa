scoreboard players set @s dummy 401
scoreboard players operation @s dummy *= @s statCTAmount
scoreboard players operation @s dummy /= #1000 counter
execute if score @s s33slot matches 0 run scoreboard players operation @s Cooldown1 += @s dummy
execute if score @s s33slot matches 0 run scoreboard players operation @s Cooldown1_max = @s Cooldown1
execute if score @s s33slot matches 1 run scoreboard players operation @s Cooldown2 += @s dummy
execute if score @s s33slot matches 1 run scoreboard players operation @s Cooldown2_max = @s Cooldown2
execute if score @s s33slot matches 2 run scoreboard players operation @s Cooldown3 += @s dummy
execute if score @s s33slot matches 2 run scoreboard players operation @s Cooldown3_max = @s Cooldown3
execute if score @s s33slot matches 3 run scoreboard players operation @s Cooldown4 += @s dummy
execute if score @s s33slot matches 3 run scoreboard players operation @s Cooldown4_max = @s Cooldown4
execute if score @s s33slot matches 4 run scoreboard players operation @s Cooldown5 += @s dummy
execute if score @s s33slot matches 4 run scoreboard players operation @s Cooldown5_max = @s Cooldown5
execute if score @s s33slot matches 5 run scoreboard players operation @s Cooldown6 += @s dummy
execute if score @s s33slot matches 5 run scoreboard players operation @s Cooldown6_max = @s Cooldown6
execute if score @s s33slot matches 6 run scoreboard players operation @s Cooldown7 += @s dummy
execute if score @s s33slot matches 6 run scoreboard players operation @s Cooldown7_max = @s Cooldown7
execute if score @s s33slot matches 7 run scoreboard players operation @s Cooldown8 += @s dummy
execute if score @s s33slot matches 7 run scoreboard players operation @s Cooldown8_max = @s Cooldown8
execute if score @s s33slot matches 8 run scoreboard players operation @s Cooldown9 += @s dummy
execute if score @s s33slot matches 8 run scoreboard players operation @s Cooldown9_max = @s Cooldown9

data modify storage wnkm:work Items set from entity @s Inventory
execute store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:33}}].tag.usedSkillSlot byte 1 run scoreboard players get @s s33slot

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
