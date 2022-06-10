execute if score @s pageChange matches 0.. run scoreboard players operation @s page = @s pageChange
execute if score @s pageChange matches -1 run function wancomatter:lobby/monitor/first
#tellraw @s {"score":{"name":"@s","objective":"pageChange"}}
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.6
clear @s #wancomatter:invgui{invGUIitem:1b}
execute if entity @s[tag=op] run loot replace entity @s container.34 loot wancomatter:invgui/op
setblock 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:invgui/1-1
loot replace block 0 0 0 container.1 loot wancomatter:invgui/2-1
loot replace block 0 0 0 container.2 loot wancomatter:invgui/3-1
loot replace block 0 0 0 container.3 loot wancomatter:invgui/4-1
loot replace block 0 0 0 container.4 loot wancomatter:invgui/5-1
loot replace block 0 0 0 container.5 loot wancomatter:invgui/6-1
loot replace block 0 0 0 container.6 loot wancomatter:invgui/7-1
loot replace block 0 0 0 container.7 loot wancomatter:seal
loot replace block 0 0 0 container.8 loot wancomatter:invgui/9-1
loot replace block 0 0 0 container.9 loot wancomatter:invgui/1-2
loot replace block 0 0 0 container.10 loot wancomatter:invgui/2-2
loot replace block 0 0 0 container.11 loot wancomatter:invgui/3-2
loot replace block 0 0 0 container.12 loot wancomatter:invgui/4-2
loot replace block 0 0 0 container.13 loot wancomatter:invgui/5-2
loot replace block 0 0 0 container.17 loot wancomatter:invgui/9-2
execute if score @s pageChange matches 1 run data modify block 0 0 0 Items[{tag:{invGUI:9b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 2 run data modify block 0 0 0 Items[{tag:{invGUI:10b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 3 run data modify block 0 0 0 Items[{tag:{invGUI:11b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 4 run data modify block 0 0 0 Items[{tag:{invGUI:12b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 5 run data modify block 0 0 0 Items[{tag:{invGUI:13b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 6 run data modify block 0 0 0 Items[{tag:{invGUI:14b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 7 run data modify block 0 0 0 Items[{tag:{invGUI:15b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 8 run data modify block 0 0 0 Items[{tag:{invGUI:16b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 9 run data modify block 0 0 0 Items[{tag:{invGUI:17b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 11 run data modify block 0 0 0 Items[{tag:{invGUI:18b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 12 run data modify block 0 0 0 Items[{tag:{invGUI:19b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 13 run data modify block 0 0 0 Items[{tag:{invGUI:20b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 14 run data modify block 0 0 0 Items[{tag:{invGUI:21b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 15 run data modify block 0 0 0 Items[{tag:{invGUI:22b}}].tag.Enchantments set value [{}]
execute if score @s pageChange matches 19 run data modify block 0 0 0 Items[{tag:{invGUI:26b}}].tag.Enchantments set value [{}]
loot replace entity @s container.9 18 mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 minecraft:air
scoreboard players reset @s pageChange
execute if entity @e[type=item,nbt={Item:{tag:{invGUIitem:1b}}},limit=1] run kill @e[type=item,nbt={Item:{tag:{invGUIitem:1b}}}]