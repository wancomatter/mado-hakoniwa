scoreboard players remove @s Mana 3
execute store result score #scythe counter run data get entity @s SelectedItemSlot 1

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
execute store result block 1024 0 1024 Items[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #scythe counter
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

scoreboard players set @s dummy 51
scoreboard players operation @s dummy *= @s statCTAmount
scoreboard players operation @s dummy /= #1000 counter
execute if score #scythe counter matches 0 run scoreboard players operation @s Cooldown1 += @s dummy
execute if score #scythe counter matches 0 run scoreboard players operation @s Cooldown1_max = @s Cooldown1
execute if score #scythe counter matches 1 run scoreboard players operation @s Cooldown2 += @s dummy
execute if score #scythe counter matches 1 run scoreboard players operation @s Cooldown2_max = @s Cooldown2
execute if score #scythe counter matches 2 run scoreboard players operation @s Cooldown3 += @s dummy
execute if score #scythe counter matches 2 run scoreboard players operation @s Cooldown3_max = @s Cooldown3
execute if score #scythe counter matches 3 run scoreboard players operation @s Cooldown4 += @s dummy
execute if score #scythe counter matches 3 run scoreboard players operation @s Cooldown4_max = @s Cooldown4
execute if score #scythe counter matches 4 run scoreboard players operation @s Cooldown5 += @s dummy
execute if score #scythe counter matches 4 run scoreboard players operation @s Cooldown5_max = @s Cooldown5
execute if score #scythe counter matches 5 run scoreboard players operation @s Cooldown6 += @s dummy
execute if score #scythe counter matches 5 run scoreboard players operation @s Cooldown6_max = @s Cooldown6
execute if score #scythe counter matches 6 run scoreboard players operation @s Cooldown7 += @s dummy
execute if score #scythe counter matches 6 run scoreboard players operation @s Cooldown7_max = @s Cooldown7
execute if score #scythe counter matches 7 run scoreboard players operation @s Cooldown8 += @s dummy
execute if score #scythe counter matches 7 run scoreboard players operation @s Cooldown8_max = @s Cooldown8
execute if score #scythe counter matches 8 run scoreboard players operation @s Cooldown9 += @s dummy
execute if score #scythe counter matches 8 run scoreboard players operation @s Cooldown9_max = @s Cooldown9
scoreboard players reset #scythe counter

execute as @s run function wancomatter:skills/114/item_change
