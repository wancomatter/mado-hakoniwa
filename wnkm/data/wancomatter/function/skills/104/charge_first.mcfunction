playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1.3 1.2
scoreboard players set @s s104count 0
fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:104}}}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed",slot:"mainhand",operation:"add_value"}].amount set value 27d
data modify block 1024 0 1024 Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:104}}}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",slot:"mainhand",operation:"add_multiplied_base"}].amount set value -1
data modify block 1024 0 1024 Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:104}}}].id set value carrot_on_a_stick
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
