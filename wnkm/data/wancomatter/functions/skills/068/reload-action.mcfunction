setblock 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
execute unless entity @s[tag=extend_magazine1] unless entity @s[tag=extend_magazine2] run data modify block 0 0 0 Items[0].tag.Ammo set from entity @s SelectedItem.tag.AmmoMax
execute if entity @s[tag=extend_magazine1,tag=!extend_magazine2] store result block 0 0 0 Items[0].tag.Ammo int 1.25 run data get entity @s SelectedItem.tag.AmmoMax 1.00
execute if entity @s[tag=!extend_magazine1,tag=extend_magazine2] store result block 0 0 0 Items[0].tag.Ammo int 1.25 run data get entity @s SelectedItem.tag.AmmoMax 1.00
execute if entity @s[tag=extend_magazine1,tag=extend_magazine2] store result block 0 0 0 Items[0].tag.Ammo int 1.5 run data get entity @s SelectedItem.tag.AmmoMax 1.00
data modify block 0 0 0 Items[0].tag.CustomModelData set value 68
data modify block 0 0 0 Items[0].tag.nowAmmoMax set from block 0 0 0 Items[0].tag.Ammo
data modify block 0 0 0 Items[0].tag.Damage set value 1
loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 air

scoreboard players remove @s Mana 13
scoreboard players set @s CooldownX 80
scoreboard players set @s CooldownX_max 80
tag @s add skill_success

playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0.5
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.5