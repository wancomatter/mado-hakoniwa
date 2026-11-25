scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber


kill @e[tag=discharge]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["yggdrasil_stand","stable","discharge","wnkm.owned"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @s add yggdrasil_parry
tag @e[tag=discharge] remove discharge

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:109}}}].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/110"
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:109}}}].components."minecraft:custom_data".LegacySkill set value 110
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1.2 1.88
particle block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 0.6 0.6 0.6 1 40 normal @a
particle block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 0.6 0.6 0.6 1 10 force @a
particle falling_dust{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 1.6 1.6 1.6 1 80 normal @a
particle falling_dust{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 1.6 1.6 1.6 1 20 force @a
scoreboard players reset #dummy
