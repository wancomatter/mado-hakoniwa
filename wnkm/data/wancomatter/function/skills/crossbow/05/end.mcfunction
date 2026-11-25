data modify storage wnkm:work Items set from entity @s Inventory

data modify storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:2b}}}].components."minecraft:custom_data".bowgunCharged set value 0b
data remove storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b}}}].components."minecraft:charged_projectiles"

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
item replace entity @s weapon.offhand from block 1024 0 1024 container.0

data remove block 1024 0 1024 Items[]
data modify block 1024 0 1024 Items set from storage wnkm:work Items
data modify block 1024 0 1024 Items[{Slot:0b}] set from storage wnkm:work Items[{Slot:0b}]
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8

setblock 1024 0 1024 air
data remove storage wnkm:work Items
