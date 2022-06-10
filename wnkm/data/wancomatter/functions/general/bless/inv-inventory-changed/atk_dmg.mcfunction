#プラス移動速度(Operation:1)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:1}].Amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:1b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:1}].Amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:2b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:1}].Amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:3b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:1}].Amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s generic.attack_damage modifier remove 86ab4484-eaf7-4fd1-0010-c2135c278d09
execute if score #bless Cooldown1 matches 30..99 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.30 multiply_base
execute if score #bless Cooldown1 matches 25..29 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.25 multiply_base
execute if score #bless Cooldown1 matches 20..24 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.20 multiply_base
execute if score #bless Cooldown1 matches 15..19 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.15 multiply_base
execute if score #bless Cooldown1 matches 10..14 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.10 multiply_base
execute if score #bless Cooldown1 matches 05..09 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0010-c2135c278d09 "armor_attack_damage" 0.05 multiply_base
scoreboard players reset #bless

#マイナス移動速度(Operation:2)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:2}].Amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:1b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:2}].Amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:2b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:2}].Amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:3b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:2}].Amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s generic.attack_damage modifier remove 86ab4484-eaf7-4fd1-0011-c2135c278d09
execute if score #bless Cooldown1 matches -14..-10 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0011-c2135c278d09 "armor_attack_damage" -0.10 multiply
execute if score #bless Cooldown1 matches -19..-15 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0011-c2135c278d09 "armor_attack_damage" -0.15 multiply
execute if score #bless Cooldown1 matches -24..-20 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0011-c2135c278d09 "armor_attack_damage" -0.20 multiply
execute if score #bless Cooldown1 matches -29..-25 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0011-c2135c278d09 "armor_attack_damage" -0.25 multiply
execute if score #bless Cooldown1 matches -99..-30 run attribute @s generic.attack_damage modifier add 86ab4484-eaf7-4fd1-0011-c2135c278d09 "armor_attack_damage" -0.30 multiply
scoreboard players reset #bless
