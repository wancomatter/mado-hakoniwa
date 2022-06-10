setblock 0 0 0 air
fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114}}].tag.AttributeModifiers[{UUID:[I;114,-114,114,114],AttributeName:"minecraft:generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Operation:0}].Amount set value 27d
data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114}}].tag.AttributeModifiers[{UUID:[I;114,114,114,114],AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:1}].Amount set value -1
data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114}}].id set value ender_eye
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air

summon armor_stand ~ ~ ~ {Tags:["scythe_stand","stable","first"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned ~ ~0.7 ~ rotated ~60 ~ run tp @e[tag=first] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.3 ^2 1 0 1 1 20 force @a
playsound minecraft:entity.wither.shoot master @a ^ ^ ^2 1 1.6
scoreboard players reset #dummy