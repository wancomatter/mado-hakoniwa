#対象バフ: Invisibility
#対象バフのId:14
tag @s add bless_invisible_now

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory

execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:0b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:1b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:2b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:3b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:4b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:5b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:6b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:7b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".invisibleFlag set value 1b
execute unless data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{invisibleFlag:1b}}}]} if data block 1024 0 1024 {Items:[{Slot:8b,id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{LegacySkill:21}}}]} run data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".invisibleFlag set value 1b

execute unless data entity @s Inventory[{Slot:100b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[] set value {}
execute if data entity @s Inventory[{Slot:100b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[] set from entity @s Inventory[{Slot:100b}]
execute unless data entity @s Inventory[{Slot:101b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append value {}
execute if data entity @s Inventory[{Slot:101b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append from entity @s Inventory[{Slot:101b}]
execute unless data entity @s Inventory[{Slot:102b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append value {}
execute if data entity @s Inventory[{Slot:102b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append from entity @s Inventory[{Slot:102b}]
execute unless data entity @s Inventory[{Slot:103b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append value {}
execute if data entity @s Inventory[{Slot:103b}] run data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem append from entity @s Inventory[{Slot:103b}]

data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[0].Slot set value 0b
data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[1].Slot set value 1b
data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[2].Slot set value 2b
data modify block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[3].Slot set value 3b

item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
fill 1024 0 1024 1024 0 1024 minecraft:air

item replace entity @s armor.feet with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.head with minecraft:air

execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run tellraw @s {"text":"[システム] ロビーで黒衣の効果は発動しません","color":"red"}
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run effect clear @s minecraft:invisibility
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] if entity @e[tag=hide-mode,limit=1] run scoreboard players set @e[tag=hide-mode] subcounter 20
execute if score #lobby counter matches 1 unless entity @s[tag=1on1_battle] run function wancomatter:general/bless/invisible-clear
