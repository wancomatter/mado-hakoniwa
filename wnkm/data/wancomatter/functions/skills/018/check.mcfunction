scoreboard players set #dummy counter 0
execute if data entity @s Inventory[{Slot:0b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:1b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:2b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:3b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:4b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:5b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:6b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:7b}].tag.star_magic run scoreboard players add #dummy counter 1
execute if data entity @s Inventory[{Slot:8b}].tag.star_magic run scoreboard players add #dummy counter 1
scoreboard players set #dummy Mana 10
scoreboard players operation #dummy Mana *= #dummy counter
execute unless score @s Mana >= #dummy Mana run function wancomatter:skills/fail
execute if score @s Mana >= #dummy Mana run function wancomatter:skills/018/first

scoreboard players reset #dummy
