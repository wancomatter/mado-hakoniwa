execute store result score #dummy dummy run data get entity @s SelectedItem.tag.Ammo 10
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
execute store result block 0 0 0 Items[0].tag.Ammo int 0.1 run scoreboard players remove #dummy dummy 10
execute store result score #dummy counter run data get entity @s SelectedItem.tag.nowAmmoMax 10
scoreboard players set #dummy subcounter 2400
scoreboard players operation #dummy subcounter /= #dummy counter
#subcounter = 10
#counter = 230
#
scoreboard players operation #dummy counter -= #dummy dummy
scoreboard players operation #dummy counter *= #dummy subcounter
scoreboard players add #dummy counter 100
execute store result block 0 0 0 Items[0].tag.Damage int 0.01 run scoreboard players get #dummy counter
scoreboard players reset #dummy
loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 air
