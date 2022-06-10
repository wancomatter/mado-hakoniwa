#プラス移動速度(Operation:1)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:1}].Amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:1b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:1}].Amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:2b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:1}].Amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:3b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:1}].Amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s generic.movement_speed modifier remove 86ab4484-eaf7-4fd1-0000-c2135c278d09
execute if score #bless Cooldown1 matches 35..99 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.35 multiply_base
execute if score #bless Cooldown1 matches 30..34 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.30 multiply_base
execute if score #bless Cooldown1 matches 25..29 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.25 multiply_base
execute if score #bless Cooldown1 matches 20..24 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.20 multiply_base
execute if score #bless Cooldown1 matches 15..19 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.15 multiply_base
execute if score #bless Cooldown1 matches 10..14 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0000-c2135c278d09 "armor_movement_speed" 0.10 multiply_base
scoreboard players reset #bless

#マイナス移動速度(Operation:2)
execute store result score #bless Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:2}].Amount 100
execute store result score #bless Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:1b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:2}].Amount 100
execute store result score #bless Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:2b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:2}].Amount 100
execute store result score #bless Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:3b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed",Operation:2}].Amount 100

scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless Cooldown1 += #bless Cooldown4

attribute @s generic.movement_speed modifier remove 86ab4484-eaf7-4fd1-0001-c2135c278d09
execute if score #bless Cooldown1 matches -17..-12 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0001-c2135c278d09 "armor_movement_speed" -0.02 multiply
execute if score #bless Cooldown1 matches -29..-18 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0001-c2135c278d09 "armor_movement_speed" -0.18 multiply
execute if score #bless Cooldown1 matches -99..-30 run attribute @s generic.movement_speed modifier add 86ab4484-eaf7-4fd1-0001-c2135c278d09 "armor_movement_speed" -0.30 multiply
scoreboard players reset #bless
