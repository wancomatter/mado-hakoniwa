#tag=creativeのプレイヤーのスロット9を削除
#item replace entity @s container.8 with minecraft:air

scoreboard players set @s cost 0
execute if data entity @s {Inventory:[{Slot:0b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:1b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:2b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:3b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:5b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:6b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:7b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:8b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:27b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:28b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:29b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:30b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:31b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:32b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:33b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:100b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:101b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:102b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:103b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Soulbound:1b}}}]} run scoreboard players add @s cost 1

#tag=creativeのプレイヤーのスロット9に謎装備を置く
#loot replace entity @s container.8 loot wancomatter:items/magic_assist/debug_stick

execute as @a if score @s cost > #lobby cost run tellraw @s {"text":"[システム] コストオーバーした為、アイテムを消去しました。","color":"red"}
execute as @a if score @s cost > #lobby cost run clear @s
