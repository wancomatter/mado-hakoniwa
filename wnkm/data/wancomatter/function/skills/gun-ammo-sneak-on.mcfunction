fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
execute if score #dummy dummy matches 5 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/105"
execute if score #dummy dummy matches 25 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/125"
execute if score #dummy dummy matches 68 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/168"
execute if score #dummy dummy matches 72 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/172"
execute if score #dummy dummy matches 86 run data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/186"
execute store result block 1024 0 1024 Items[0].components."minecraft:custom_data".LegacySkill int 1 run scoreboard players add #dummy dummy 100
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
