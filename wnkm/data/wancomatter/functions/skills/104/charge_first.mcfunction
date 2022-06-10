playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1.3 1.2
scoreboard players set @s s104count 0
fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}].tag.AttributeModifiers[{UUID:[I;104,-104,104,104],AttributeName:"minecraft:generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Operation:0}].Amount set value 27d
data modify block 0 0 0 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}].tag.AttributeModifiers[{UUID:[I;104,104,104,104],AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:1}].Amount set value -1
data modify block 0 0 0 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}].id set value carrot_on_a_stick
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air