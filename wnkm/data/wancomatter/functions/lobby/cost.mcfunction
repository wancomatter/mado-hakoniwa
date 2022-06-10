#tag=creativeのプレイヤーのスロット9を削除
#item replace entity @s container.8 with minecraft:air

scoreboard players set @s cost 0
execute if data entity @s {Inventory:[{Slot:0b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:1b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:2b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:3b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:4b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:5b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:6b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:7b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:8b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:27b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:28b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:29b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:30b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:31b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:32b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:33b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:100b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:101b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:102b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:103b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{Soulbound:1b}}]} run scoreboard players add @s cost 1

#tag=creativeのプレイヤーのスロット9に謎装備を置く
#loot replace entity @s container.8 loot wancomatter:items/magic_assist/debug_stick

execute as @a if score @s cost > #lobby cost run tellraw @s {"text":"[システム] コストオーバーした為、アイテムを消去しました。","color":"red"}
execute as @a if score @s cost > #lobby cost run clear @s
