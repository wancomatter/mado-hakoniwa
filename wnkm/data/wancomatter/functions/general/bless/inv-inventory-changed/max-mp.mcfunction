execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b,invisibleItem:[{Slot:3b}]}}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:3b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b,invisibleItem:[{Slot:2b}]}}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:2b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b,invisibleItem:[{Slot:1b}]}}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:1b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b,invisibleItem:[{Slot:0b}]}}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem[{Slot:0b}].tag.maxMP
