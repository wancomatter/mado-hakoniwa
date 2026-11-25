data modify storage wnkm:work Items set from entity @s Inventory

data modify storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:charged_projectiles"[] set from storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunStorage
execute store result score #dummy dummy run data get storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunStorage.count 1
scoreboard players remove #dummy dummy 1
execute if score #dummy dummy matches 2..64 store result score #dummy counter run data get storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunStorage.maxCount 1
execute if score #dummy dummy matches 2..64 run scoreboard players set #dummy subcounter2 465
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy subcounter = #dummy counter
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy counter -= #dummy dummy
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy counter *= #dummy subcounter2
execute if score #dummy dummy matches 2..64 store result storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:damage" int 1 run scoreboard players operation #dummy counter /= #dummy subcounter
execute if score #dummy dummy matches 2..64 store result storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunStorage.count byte 1 run scoreboard players get #dummy dummy
data modify storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b}}}].components."minecraft:custom_data".Charged set value 1b
execute unless score #dummy dummy matches 2..64 run data remove storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:damage"
execute unless score #dummy dummy matches 2..64 run data remove storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunStorage
execute unless score #dummy dummy matches 2..64 run data modify storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:unbreakable" set value 1b
execute unless score #dummy dummy matches 2..64 run data modify storage wnkm:work Items[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{bowgun:1b,bowgunCharged:1b}}}].components."minecraft:custom_data".bowgunCharged set value 2b
scoreboard players reset #dummy

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
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

setblock 1024 0 1024 air
data remove storage wnkm:work Items
