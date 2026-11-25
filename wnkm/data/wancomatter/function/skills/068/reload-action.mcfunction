setblock 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
execute unless entity @s[tag=extend_magazine1] unless entity @s[tag=extend_magazine2] run data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo set from entity @s SelectedItem.components."minecraft:custom_data".AmmoMax
execute if entity @s[tag=extend_magazine1,tag=!extend_magazine2] store result block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo int 1.25 run data get entity @s SelectedItem.components."minecraft:custom_data".AmmoMax 1.00
execute if entity @s[tag=!extend_magazine1,tag=extend_magazine2] store result block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo int 1.25 run data get entity @s SelectedItem.components."minecraft:custom_data".AmmoMax 1.00
execute if entity @s[tag=extend_magazine1,tag=extend_magazine2] store result block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo int 1.5 run data get entity @s SelectedItem.components."minecraft:custom_data".AmmoMax 1.00
data modify block 1024 0 1024 Items[0].components."minecraft:item_model" set value "wnkm:equipment/guns/aqua_gun"
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".LegacySkill set value 68
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".nowAmmoMax set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo
data modify block 1024 0 1024 Items[0].components."minecraft:damage" set value 1
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

scoreboard players remove @s Mana 13
scoreboard players set @s CooldownX 80
scoreboard players set @s CooldownX_max 80
tag @s add skill_success

playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0.5
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.5
