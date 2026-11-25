setblock 1024 0 1024 air
fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed",slot:"mainhand",operation:"add_value"}].amount set value 27d
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",slot:"mainhand",operation:"add_multiplied_base"}].amount set value -1
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:114}}}].id set value ender_eye
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["scythe_stand","stable","first","wnkm.owned"]}
execute positioned ~ ~0.7 ~ rotated ~60 ~ run tp @e[tag=first] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.3 ^2 1 0 1 1 20 force @a
playsound minecraft:entity.wither.shoot master @a ^ ^ ^2 1 1.6
scoreboard players reset #dummy
