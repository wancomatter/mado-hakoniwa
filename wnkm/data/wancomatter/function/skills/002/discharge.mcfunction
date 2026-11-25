#コスト支払い
scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 80
scoreboard players set @s CooldownX_max 80

scoreboard players operation #dummy playerNumber = @s playerNumber

data modify storage wnkm:work Items set from entity @s Inventory
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}

data remove storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments"[{id:"fire_aspect",lvl:1s}]
data remove storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments"[{id:"flame",lvl:1s}]
execute store result score #dummy dummy run data get storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments"
execute if score #dummy dummy matches 0 run data remove storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments"
data remove storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:custom_data".addedFlame

data modify storage wnkm:work Items[0].components."minecraft:custom_data".addedFlame set value 1b

execute unless data storage wnkm:work {Items:[{id:"minecraft:bow",components:{"minecraft:custom_data":{addedFlame:1b}}}]} run data modify storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments" prepend value {id:"fire_aspect",lvl:1s}
execute if data storage wnkm:work {Items:[{id:"minecraft:bow",components:{"minecraft:custom_data":{addedFlame:1b}}}]} run data modify storage wnkm:work Items[{components:{"minecraft:custom_data":{addedFlame:1b}}}].components."minecraft:enchantments" prepend value {id:"flame",lvl:1s}

loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
item replace entity @s weapon.offhand from block 1024 0 1024 container.0

data remove block 1024 0 1024 Items[]
data modify block 1024 0 1024 Items set from storage wnkm:work Items
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
item replace entity @s container.9 from block 1024 0 1024 container.9
item replace entity @s container.10 from block 1024 0 1024 container.10
item replace entity @s container.11 from block 1024 0 1024 container.11
item replace entity @s container.12 from block 1024 0 1024 container.12
item replace entity @s container.13 from block 1024 0 1024 container.13
item replace entity @s container.14 from block 1024 0 1024 container.14
item replace entity @s container.15 from block 1024 0 1024 container.15
item replace entity @s container.16 from block 1024 0 1024 container.16
item replace entity @s container.17 from block 1024 0 1024 container.17
item replace entity @s container.18 from block 1024 0 1024 container.18
item replace entity @s container.19 from block 1024 0 1024 container.19
item replace entity @s container.20 from block 1024 0 1024 container.20
item replace entity @s container.21 from block 1024 0 1024 container.21
item replace entity @s container.22 from block 1024 0 1024 container.22
item replace entity @s container.23 from block 1024 0 1024 container.23
item replace entity @s container.24 from block 1024 0 1024 container.24
item replace entity @s container.25 from block 1024 0 1024 container.25
item replace entity @s container.26 from block 1024 0 1024 container.26

data remove block 1024 0 1024 Items[]
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item.Slot set value 1b
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item.Slot set value 2b
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item.Slot set value 3b
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item.Slot set value 4b
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item.Slot set value 5b
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item.Slot set value 6b
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item.Slot set value 7b
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item.Slot set value 8b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:1b}] set from block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:2b}] set from block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:3b}] set from block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:4b}] set from block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:5b}] set from block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:6b}] set from block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:7b}] set from block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:8b}] set from block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item
item replace entity @s container.27 from block 1024 0 1024 container.0
item replace entity @s container.28 from block 1024 0 1024 container.1
item replace entity @s container.29 from block 1024 0 1024 container.2
item replace entity @s container.30 from block 1024 0 1024 container.3
item replace entity @s container.31 from block 1024 0 1024 container.4
item replace entity @s container.32 from block 1024 0 1024 container.5
item replace entity @s container.33 from block 1024 0 1024 container.6
item replace entity @s container.34 from block 1024 0 1024 container.7
item replace entity @s container.35 from block 1024 0 1024 container.8

setblock 1024 0 1024 air
data remove storage wnkm:work Items

execute if entity @e[tag=add_flame_stand,limit=1] as @e[tag=add_flame_stand] if score @s playerNumber = @s playerNumber run kill @s
summon marker ~ ~ ~ {Tags:["first","stable","add_flame_stand","wnkm.owned"]}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 1
particle flame ~ ~0.3 ~ 1.3 0.3 1.3 0.1 80 normal @a
particle flame ~ ~0.3 ~ 1.3 0.3 1.3 0.1 30 force @a
scoreboard players reset #dummy
