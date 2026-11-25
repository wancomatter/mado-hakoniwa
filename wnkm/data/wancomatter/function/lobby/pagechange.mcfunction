execute if score @s pageChange matches 0.. run scoreboard players operation @s page = @s pageChange
execute if score @s pageChange matches -1 run function wancomatter:lobby/monitor/first
#tellraw @s {"score":{"name":"@s","objective":"pageChange"}}
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.6
clear @s #wancomatter:invgui[custom_data~{invGUIitem:1b}]
execute if entity @s[tag=op] run loot replace entity @s container.34 loot wancomatter:invgui/op
setblock 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:invgui/1-1
loot replace block 1024 0 1024 container.1 loot wancomatter:invgui/2-1
loot replace block 1024 0 1024 container.2 loot wancomatter:invgui/3-1
loot replace block 1024 0 1024 container.3 loot wancomatter:invgui/4-1
loot replace block 1024 0 1024 container.4 loot wancomatter:invgui/5-1
loot replace block 1024 0 1024 container.5 loot wancomatter:invgui/6-1
loot replace block 1024 0 1024 container.6 loot wancomatter:invgui/7-1
loot replace block 1024 0 1024 container.7 loot wancomatter:seal
loot replace block 1024 0 1024 container.8 loot wancomatter:invgui/9-1
loot replace block 1024 0 1024 container.9 loot wancomatter:invgui/1-2
loot replace block 1024 0 1024 container.10 loot wancomatter:invgui/2-2
loot replace block 1024 0 1024 container.11 loot wancomatter:invgui/3-2
loot replace block 1024 0 1024 container.12 loot wancomatter:invgui/4-2
loot replace block 1024 0 1024 container.13 loot wancomatter:invgui/5-2
loot replace block 1024 0 1024 container.17 loot wancomatter:invgui/9-2
execute if score @s pageChange matches 1 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:9b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 2 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:10b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 3 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:11b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 4 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:12b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 5 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:13b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 6 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:14b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 7 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:15b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 8 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:16b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 9 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:17b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 11 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:18b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 12 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:19b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 13 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:20b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 14 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:21b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 15 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:22b}}}].components."minecraft:enchantment_glint_override" set value 1b
execute if score @s pageChange matches 19 run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{invGUI:26b}}}].components."minecraft:enchantment_glint_override" set value 1b
item replace entity @s container.9 from block 1024 0 1024 container.0
item replace entity @s container.10 from block 1024 0 1024 container.1
item replace entity @s container.11 from block 1024 0 1024 container.2
item replace entity @s container.12 from block 1024 0 1024 container.3
item replace entity @s container.13 from block 1024 0 1024 container.4
item replace entity @s container.14 from block 1024 0 1024 container.5
item replace entity @s container.15 from block 1024 0 1024 container.6
item replace entity @s container.16 from block 1024 0 1024 container.7
item replace entity @s container.17 from block 1024 0 1024 container.8
item replace entity @s container.18 from block 1024 0 1024 container.9
item replace entity @s container.19 from block 1024 0 1024 container.10
item replace entity @s container.20 from block 1024 0 1024 container.11
item replace entity @s container.21 from block 1024 0 1024 container.12
item replace entity @s container.22 from block 1024 0 1024 container.13
item replace entity @s container.23 from block 1024 0 1024 container.14
item replace entity @s container.24 from block 1024 0 1024 container.15
item replace entity @s container.25 from block 1024 0 1024 container.16
item replace entity @s container.26 from block 1024 0 1024 container.17
setblock 1024 0 1024 minecraft:air
execute if score @s pageChange matches 1.. run function wancomatter:lobby/9-enderchest_items
scoreboard players reset @s pageChange
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{invGUIitem:1b}}}},limit=1] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{invGUIitem:1b}}}}]
