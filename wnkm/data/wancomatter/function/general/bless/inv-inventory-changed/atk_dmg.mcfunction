#プラス移動速度(Operation:1)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:0b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_base"}].amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:1b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_base"}].amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:2b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_base"}].amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:3b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_base"}].amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s attack_damage modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09
execute if score #bless Cooldown1 matches 30..99 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.30 add_multiplied_base
execute if score #bless Cooldown1 matches 25..29 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.25 add_multiplied_base
execute if score #bless Cooldown1 matches 20..24 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.20 add_multiplied_base
execute if score #bless Cooldown1 matches 15..19 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.15 add_multiplied_base
execute if score #bless Cooldown1 matches 10..14 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.10 add_multiplied_base
execute if score #bless Cooldown1 matches 05..09 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09 0.05 add_multiplied_base
scoreboard players reset #bless

#マイナス移動速度(Operation:2)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:0b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_total"}].amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:1b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_total"}].amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:2b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_total"}].amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[{Slot:3b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage",operation:"add_multiplied_total"}].amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s attack_damage modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09
execute if score #bless Cooldown1 matches -14..-10 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09 -0.10 add_multiplied_total
execute if score #bless Cooldown1 matches -19..-15 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09 -0.15 add_multiplied_total
execute if score #bless Cooldown1 matches -24..-20 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09 -0.20 add_multiplied_total
execute if score #bless Cooldown1 matches -29..-25 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09 -0.25 add_multiplied_total
execute if score #bless Cooldown1 matches -99..-30 run attribute @s attack_damage modifier add wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09 -0.30 add_multiplied_total
scoreboard players reset #bless
