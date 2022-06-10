execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.5 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["this","morning_star"],Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:43}}]}
scoreboard players set @e[tag=this] subcounter 1
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this] store result score @s Cooldown1 run data get entity @s Motion[0] 8050
execute as @e[tag=this] store result score @s Cooldown2 run data get entity @s Motion[1] 8050
execute as @e[tag=this] store result score @s Cooldown3 run data get entity @s Motion[2] 8050
tag @e[tag=this] remove this
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1.3 0.5
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.5

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
execute store result score @s dummy run data get entity @s SelectedItemSlot 1
execute store result block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:43}}].tag.43.usedSkillSlot byte 1 run scoreboard players get @s dummy
data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:43}}].tag.CustomModelData set value 44
execute if data block 0 0 0 Items[{Slot:0b}] run loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air