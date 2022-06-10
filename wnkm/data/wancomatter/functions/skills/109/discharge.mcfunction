scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber


kill @e[tag=discharge]
summon armor_stand ~ ~ ~ {Tags:["yggdrasil_stand","stable","discharge"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @s add yggdrasil_parry
tag @e[tag=discharge] remove discharge

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:109}}].tag.CustomModelData set value 110
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1.2 1.88
particle minecraft:block minecraft:oak_leaves ~ ~1 ~ 0.6 0.6 0.6 1 40 normal @a
particle minecraft:block minecraft:oak_leaves ~ ~1 ~ 0.6 0.6 0.6 1 10 force @a
particle minecraft:falling_dust minecraft:oak_leaves ~ ~1 ~ 1.6 1.6 1.6 1 80 normal @a
particle minecraft:falling_dust minecraft:oak_leaves ~ ~1 ~ 1.6 1.6 1.6 1 20 force @a
scoreboard players reset #dummy