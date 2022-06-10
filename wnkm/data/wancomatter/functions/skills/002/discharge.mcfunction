#コスト支払い
scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 80
scoreboard players set @s CooldownX_max 80

scoreboard players operation #dummy playerNumber = @s playerNumber

data modify storage wnkm:work Items set from entity @s Inventory
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}

data remove storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments[{id:"fire_aspect",lvl:1s}]
data remove storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments[{id:"flame",lvl:1s}]
execute store result score #dummy dummy run data get storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments
execute if score #dummy dummy matches 0 run data remove storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments
data remove storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.addedFlame

data modify storage wnkm:work Items[0].tag.addedFlame set value 1b

execute unless data storage wnkm:work {Items:[{id:"minecraft:bow",tag:{addedFlame:1b}}]} run data modify storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments prepend value {id:"fire_aspect",lvl:1s}
execute if data storage wnkm:work {Items:[{id:"minecraft:bow",tag:{addedFlame:1b}}]} run data modify storage wnkm:work Items[{tag:{addedFlame:1b}}].tag.Enchantments prepend value {id:"flame",lvl:1s}

loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from storage wnkm:work Items
loot replace entity @s container.0 27 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 0 0 0 Items[{Slot:1b}].tag.Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 0 0 0 Items[{Slot:2b}].tag.Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 0 0 0 Items[{Slot:3b}].tag.Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 0 0 0 Items[{Slot:4b}].tag.Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 0 0 0 Items[{Slot:5b}].tag.Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 0 0 0 Items[{Slot:6b}].tag.Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 0 0 0 Items[{Slot:7b}].tag.Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 0 0 0 Items[{Slot:8b}].tag.Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:1b}].tag.Item.Slot set value 1b
data modify block 0 0 0 Items[{Slot:2b}].tag.Item.Slot set value 2b
data modify block 0 0 0 Items[{Slot:3b}].tag.Item.Slot set value 3b
data modify block 0 0 0 Items[{Slot:4b}].tag.Item.Slot set value 4b
data modify block 0 0 0 Items[{Slot:5b}].tag.Item.Slot set value 5b
data modify block 0 0 0 Items[{Slot:6b}].tag.Item.Slot set value 6b
data modify block 0 0 0 Items[{Slot:7b}].tag.Item.Slot set value 7b
data modify block 0 0 0 Items[{Slot:8b}].tag.Item.Slot set value 8b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{Slot:1b}] set from block 0 0 0 Items[{Slot:1b}].tag.Item
data modify block 0 0 0 Items[{Slot:2b}] set from block 0 0 0 Items[{Slot:2b}].tag.Item
data modify block 0 0 0 Items[{Slot:3b}] set from block 0 0 0 Items[{Slot:3b}].tag.Item
data modify block 0 0 0 Items[{Slot:4b}] set from block 0 0 0 Items[{Slot:4b}].tag.Item
data modify block 0 0 0 Items[{Slot:5b}] set from block 0 0 0 Items[{Slot:5b}].tag.Item
data modify block 0 0 0 Items[{Slot:6b}] set from block 0 0 0 Items[{Slot:6b}].tag.Item
data modify block 0 0 0 Items[{Slot:7b}] set from block 0 0 0 Items[{Slot:7b}].tag.Item
data modify block 0 0 0 Items[{Slot:8b}] set from block 0 0 0 Items[{Slot:8b}].tag.Item
loot replace entity @s container.27 9 mine 0 0 0 air{inv_copy:1b}

setblock 0 0 0 air
data remove storage wnkm:work Items

execute if entity @e[tag=add_flame_stand,limit=1] as @e[tag=add_flame_stand] if score @s playerNumber = @s playerNumber run kill @s
summon marker ~ ~ ~ {Tags:["first","stable","add_flame_stand"]}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 1
particle flame ~ ~0.3 ~ 1.3 0.3 1.3 0.1 80 normal @a
particle flame ~ ~0.3 ~ 1.3 0.3 1.3 0.1 30 force @a
scoreboard players reset #dummy