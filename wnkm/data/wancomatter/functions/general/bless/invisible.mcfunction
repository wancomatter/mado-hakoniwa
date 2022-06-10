#対象バフ: Invisibility
#対象バフのId:14
tag @s add bless_invisible_now

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory

execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:0b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:0b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:1b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:1b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:2b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:2b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:3b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:3b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:4b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:4b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:5b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:5b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:6b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:6b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:7b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:7b}].tag.invisibleFlag set value 1b
execute unless data block 0 0 0 {Items:[{tag:{invisibleFlag:1b}}]} if data block 0 0 0 {Items:[{Slot:8b,id:"minecraft:stone_hoe",tag:{CustomModelData:21}}]} run data modify block 0 0 0 Items[{Slot:8b}].tag.invisibleFlag set value 1b

execute unless data entity @s Inventory[{Slot:100b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[] set value {}
execute if data entity @s Inventory[{Slot:100b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[] set from entity @s Inventory[{Slot:100b}]
execute unless data entity @s Inventory[{Slot:101b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append value {}
execute if data entity @s Inventory[{Slot:101b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append from entity @s Inventory[{Slot:101b}]
execute unless data entity @s Inventory[{Slot:102b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append value {}
execute if data entity @s Inventory[{Slot:102b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append from entity @s Inventory[{Slot:102b}]
execute unless data entity @s Inventory[{Slot:103b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append value {}
execute if data entity @s Inventory[{Slot:103b}] run data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem append from entity @s Inventory[{Slot:103b}]

data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[0].Slot set value 0b
data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[1].Slot set value 1b
data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[2].Slot set value 2b
data modify block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[3].Slot set value 3b

loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}
fill 0 0 0 0 0 0 minecraft:air

item replace entity @s armor.feet with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.head with minecraft:air

execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run tellraw @s {"text":"[システム] ロビーで黒衣の効果は発動しません","color":"red"}
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run effect clear @s minecraft:invisibility
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] if entity @e[tag=hide-mode,limit=1] run scoreboard players set @e[tag=hide-mode] subcounter 20
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run function wancomatter:general/bless/invisible-clear