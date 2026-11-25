execute store result score #dummy dummy run data get entity @s SelectedItem.components."minecraft:custom_data".Ammo 10
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[0] set from block 1024 0 1024 Items[0].components."minecraft:custom_data".Item
execute store result block 1024 0 1024 Items[0].components."minecraft:custom_data".Ammo int 0.1 run scoreboard players remove #dummy dummy 10
execute store result score #dummy counter run data get entity @s SelectedItem.components."minecraft:custom_data".nowAmmoMax 10
scoreboard players set #dummy subcounter 2400
scoreboard players operation #dummy subcounter /= #dummy counter
#subcounter = 10
#counter = 230
#
scoreboard players operation #dummy counter -= #dummy dummy
scoreboard players operation #dummy counter *= #dummy subcounter
scoreboard players add #dummy counter 100
execute store result block 1024 0 1024 Items[0].components."minecraft:damage" int 0.01 run scoreboard players get #dummy counter
scoreboard players reset #dummy
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
