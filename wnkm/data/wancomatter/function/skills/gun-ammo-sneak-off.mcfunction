fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
execute if score #dummy dummy matches 105 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/revolver"
execute if score #dummy dummy matches 125 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/shoen"
execute if score #dummy dummy matches 168 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/aqua_gun"
execute if score #dummy dummy matches 172 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/stm110"
execute if score #dummy dummy matches 186 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/two_gun"
execute store result block 1024 0 1024 Items[0].components."minecraft:custom_data".LegacySkill int 1 run scoreboard players remove #dummy dummy 100
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
