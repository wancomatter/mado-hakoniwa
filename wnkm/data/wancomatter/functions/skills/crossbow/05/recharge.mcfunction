data modify storage wnkm:work Items set from entity @s Inventory

data modify storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.ChargedProjectiles[] set from storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.bowgunStorage
execute store result score #dummy dummy run data get storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.bowgunStorage.Count 1
scoreboard players remove #dummy dummy 1
execute if score #dummy dummy matches 2..64 store result score #dummy counter run data get storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.bowgunStorage.maxCount 1
execute if score #dummy dummy matches 2..64 run scoreboard players set #dummy subcounter2 465
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy subcounter = #dummy counter
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy counter -= #dummy dummy
execute if score #dummy dummy matches 2..64 run scoreboard players operation #dummy counter *= #dummy subcounter2
execute if score #dummy dummy matches 2..64 store result storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.Damage int 1 run scoreboard players operation #dummy counter /= #dummy subcounter
execute if score #dummy dummy matches 2..64 store result storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}].tag.bowgunStorage.Count byte 1 run scoreboard players get #dummy dummy
data modify storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,Charged:0b}}].tag.Charged set value 1b
execute unless score #dummy dummy matches 2..64 run data remove storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b}}].tag.Damage
execute unless score #dummy dummy matches 2..64 run data remove storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b}}].tag.bowgunStorage
execute unless score #dummy dummy matches 2..64 run data modify storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b}}].tag.Unbreakable set value 1b
execute unless score #dummy dummy matches 2..64 run data modify storage wnkm:work Items[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b}}].tag.bowgunCharged set value 2b
scoreboard players reset #dummy

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[0].tag.Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 0 0 0 Items[0].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[0] set from block 0 0 0 Items[0].tag.Item
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from storage wnkm:work Items
loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}

setblock 0 0 0 air
data remove storage wnkm:work Items
