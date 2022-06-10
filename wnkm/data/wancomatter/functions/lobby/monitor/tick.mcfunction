effect give @s minecraft:levitation 1 255 true
tp @e[tag=monitorUIslime] ^ ^ ^1
execute positioned 0 66.625 0 unless entity @s[distance=..0.1] run tp @s 0 66.625 0
execute positioned 0 67.725 0 rotated as @s positioned ^ ^ ^2 if entity @e[distance=..0.4,tag=monitorUI,tag=!monitorUIdisplay,limit=1] as @e[distance=..0.4,tag=monitorUI,tag=!monitorUIdisplay] run tag @s add monitorUIfocus
execute if entity @e[tag=monitorUIfocusing,tag=!monitorUIfocus,limit=1] as @e[tag=monitorUIfocusing,tag=!monitorUIfocus] run data modify entity @s CustomNameVisible set value 0b
execute if entity @e[tag=monitorUIfocusing,tag=!monitorUIfocus,limit=1] as @e[tag=monitorUIfocusing,tag=!monitorUIfocus] run data modify entity @s Glowing set value 0b
execute if entity @e[tag=monitorUIfocusing,tag=!monitorUIfocus,limit=1] run tag @e[tag=monitorUIfocusing,tag=!monitorUIfocus] remove monitorUIfocusing
execute if entity @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus,limit=1] as @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus] run data modify entity @s CustomNameVisible set value 1b
execute if entity @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus,limit=1] as @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus] run data modify entity @s Glowing set value 1b
execute if entity @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus,limit=1] run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.75 2
execute if entity @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus,limit=1] as @e[tag=monitorUI,tag=!monitorUIfocusing,tag=monitorUIfocus] run tag @s add monitorUIfocusing

execute if entity @s[advancements={wancomatter:monitor_ui=true}] if entity @e[tag=monitorUIfocus,limit=1] run function wancomatter:lobby/monitor/action_root
execute if entity @e[tag=monitorUIfocus,limit=1] run tag @e[tag=monitorUIfocus] remove monitorUIfocus