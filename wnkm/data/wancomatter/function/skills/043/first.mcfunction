execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.5 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["vector","wnkm.owned","wnkm.round"]}
execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible:1b,Small:1b,Tags:["this","morning_star","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:43},"minecraft:item_model":"wnkm:appearance/golden_hoe/43"},count:1,id:"minecraft:golden_hoe"}}}
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

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
execute store result score @s dummy run data get entity @s SelectedItemSlot 1
execute store result block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}].components."minecraft:custom_data".43.usedSkillSlot byte 1 run scoreboard players get @s dummy
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}].components."minecraft:item_model" set value "wnkm:appearance/carrot_on_a_stick/44"
data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}].components."minecraft:custom_data".LegacySkill set value 44
execute if data block 1024 0 1024 Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
