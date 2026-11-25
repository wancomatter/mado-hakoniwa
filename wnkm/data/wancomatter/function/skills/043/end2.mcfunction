scoreboard players set @s dummy 60
scoreboard players operation @s dummy *= @s statCTAmount
scoreboard players operation @s dummy /= #1000 counter

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify storage wnkm:work Items set from entity @s Inventory
data modify storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:custom_data".usedSkillSlot set from storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:custom_data".43.usedSkillSlot
data remove storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:custom_data".43
data modify storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:item_model" set value "wnkm:equipment/melee/morning_star"
data modify storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:custom_data".LegacySkill set value 43

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
item replace entity @s weapon.offhand from block 1024 0 1024 container.0

data remove block 1024 0 1024 Items[]
data modify block 1024 0 1024 Items set from storage wnkm:work Items
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
item replace entity @s container.9 from block 1024 0 1024 container.9
item replace entity @s container.10 from block 1024 0 1024 container.10
item replace entity @s container.11 from block 1024 0 1024 container.11
item replace entity @s container.12 from block 1024 0 1024 container.12
item replace entity @s container.13 from block 1024 0 1024 container.13
item replace entity @s container.14 from block 1024 0 1024 container.14
item replace entity @s container.15 from block 1024 0 1024 container.15
item replace entity @s container.16 from block 1024 0 1024 container.16
item replace entity @s container.17 from block 1024 0 1024 container.17
item replace entity @s container.18 from block 1024 0 1024 container.18
item replace entity @s container.19 from block 1024 0 1024 container.19
item replace entity @s container.20 from block 1024 0 1024 container.20
item replace entity @s container.21 from block 1024 0 1024 container.21
item replace entity @s container.22 from block 1024 0 1024 container.22
item replace entity @s container.23 from block 1024 0 1024 container.23
item replace entity @s container.24 from block 1024 0 1024 container.24
item replace entity @s container.25 from block 1024 0 1024 container.25
item replace entity @s container.26 from block 1024 0 1024 container.26

data remove block 1024 0 1024 Items[]
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item.Slot set value 1b
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item.Slot set value 2b
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item.Slot set value 3b
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item.Slot set value 4b
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item.Slot set value 5b
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item.Slot set value 6b
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item.Slot set value 7b
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item.Slot set value 8b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:1b}] set from block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:2b}] set from block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:3b}] set from block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:4b}] set from block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:5b}] set from block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:6b}] set from block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:7b}] set from block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:8b}] set from block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item
item replace entity @s container.27 from block 1024 0 1024 container.0
item replace entity @s container.28 from block 1024 0 1024 container.1
item replace entity @s container.29 from block 1024 0 1024 container.2
item replace entity @s container.30 from block 1024 0 1024 container.3
item replace entity @s container.31 from block 1024 0 1024 container.4
item replace entity @s container.32 from block 1024 0 1024 container.5
item replace entity @s container.33 from block 1024 0 1024 container.6
item replace entity @s container.34 from block 1024 0 1024 container.7
item replace entity @s container.35 from block 1024 0 1024 container.8

setblock 1024 0 1024 air
data remove storage wnkm:work Items

execute store result score #dummy dummy run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}].Slot 1
execute if score #dummy dummy matches 0 run scoreboard players operation @s Cooldown1 = @s dummy
execute if score #dummy dummy matches 0 run scoreboard players operation @s Cooldown1_max = @s dummy
execute unless score #dummy dummy matches 1.. if data entity @s {Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 1
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown2 = @s dummy
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown2_max = @s dummy
execute unless score #dummy dummy matches 2.. if data entity @s {Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 2
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown3 = @s dummy
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown3_max = @s dummy
execute unless score #dummy dummy matches 3.. if data entity @s {Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 3
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown4 = @s dummy
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown4_max = @s dummy
execute unless score #dummy dummy matches 4.. if data entity @s {Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 4
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown5 = @s dummy
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown5_max = @s dummy
execute unless score #dummy dummy matches 5.. if data entity @s {Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 5
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown6 = @s dummy
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown6_max = @s dummy
execute unless score #dummy dummy matches 6.. if data entity @s {Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 6
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown7 = @s dummy
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown7_max = @s dummy
execute unless score #dummy dummy matches 7.. if data entity @s {Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 7
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown8 = @s dummy
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown8_max = @s dummy
execute unless score #dummy dummy matches 8.. if data entity @s {Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}]} run scoreboard players set #dummy dummy 8
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown9 = @s dummy
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown9_max = @s dummy

scoreboard players reset @s dummy
