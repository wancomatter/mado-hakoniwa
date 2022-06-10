#ロビースペクテイターの処理
execute if entity @a[x=-16,y=65.8,z=-16,dx=32,dy=30.5,dz=32,limit=1] run tag @a[x=-16,y=65.8,z=-16,dx=32,dy=30.5,dz=32] add lobby_mid
execute if entity @a[limit=1,tag=lobby_mid,gamemode=spectator] as @a[tag=lobby_mid,gamemode=spectator] unless entity @s[scores={maxHP=1..}] run function wancomatter:lobby/spectate/end
execute if entity @a[x=-16,y=64.3,z=-16,dx=32,dy=32,dz=32,limit=1] run tag @a[x=-16,y=64.3,z=-16,dx=32,dy=32,dz=32] add lobby_mid
execute if entity @a[limit=1,tag=!lobby_mid,gamemode=adventure,tag=!1on1_battle,tag=!creative] as @a[tag=!lobby_mid,gamemode=adventure,tag=!1on1_battle,tag=!creative] run function wancomatter:lobby/spectate/start
tag @a[tag=lobby_mid] remove lobby_mid
#動き回るサンドバッグが逃げないようにする措置
execute as @e[tag=sandBag_hasAI] unless entity @s[x=-20,y=62,z=-20,dx=40,dy=40,dz=40] run tp @s 0 65 0
#サンドバッグのhurtByNumber
execute if entity @e[tag=sandBag,scores={hurtByTime=1..},limit=1] run scoreboard players add @e[tag=sandBag,scores={hurtByTime=1..}] hurtByTime 1
execute if entity @e[tag=sandBag,scores={hurtByTime=60..},limit=1] as @e[tag=sandBag,scores={hurtByTime=60..}] at @s run function wancomatter:general/sandbag-end

#ゲームモード:1on1の時の処理
execute if score #gamemode counter matches 10 run function wancomatter:game/1on1/tick

#execute if entity @e[type=item,tag=!monitorUI,limit=1] run kill @e[type=item,tag=!monitorUI]

execute as @a unless data entity @s {Inventory:[{Slot:10b,tag:{invGUI:10b}}]} run scoreboard players set @s pageChange 2
execute as @a unless data entity @s {Inventory:[{Slot:11b,tag:{invGUI:11b}}]} run scoreboard players set @s pageChange 3
execute as @a unless data entity @s {Inventory:[{Slot:12b,tag:{invGUI:12b}}]} run scoreboard players set @s pageChange 4
execute as @a unless data entity @s {Inventory:[{Slot:13b,tag:{invGUI:13b}}]} run scoreboard players set @s pageChange 5
execute as @a unless data entity @s {Inventory:[{Slot:14b,tag:{invGUI:14b}}]} run scoreboard players set @s pageChange 6
execute as @a unless data entity @s {Inventory:[{Slot:15b,tag:{invGUI:15b}}]} run scoreboard players set @s pageChange 7
#execute as @a unless data entity @s {Inventory:[{Slot:16b,tag:{invGUI:16b}}]} run scoreboard players set @s pageChange 8
execute as @a unless data entity @s {Inventory:[{Slot:17b,tag:{invGUI:17b}}]} run scoreboard players set @s pageChange 9
execute as @a unless data entity @s {Inventory:[{Slot:18b,tag:{invGUI:18b}}]} run scoreboard players set @s pageChange 11
execute as @a unless data entity @s {Inventory:[{Slot:19b,tag:{invGUI:19b}}]} run scoreboard players set @s pageChange 12
execute as @a unless data entity @s {Inventory:[{Slot:20b,tag:{invGUI:20b}}]} run scoreboard players set @s pageChange 13
execute as @a unless data entity @s {Inventory:[{Slot:21b,tag:{invGUI:21b}}]} run scoreboard players set @s pageChange 14
execute as @a unless data entity @s {Inventory:[{Slot:22b,tag:{invGUI:22b}}]} run scoreboard players set @s pageChange 15
execute as @a unless data entity @s {Inventory:[{Slot:26b,tag:{invGUI:26b}}]} run scoreboard players set @s pageChange 19
execute as @a[tag=op] unless data entity @s {Inventory:[{Slot:34b,tag:{invGUI:34b}}]} run scoreboard players set @s pageChange -1
execute as @a unless data entity @s {Inventory:[{Slot:9b,tag:{invGUI:9b}}]} run scoreboard players set @s pageChange 1

execute if entity @a[scores={pageChange=-1..},limit=1] as @a[scores={pageChange=-1..}] at @s run function wancomatter:lobby/pagechange

#execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] run say t
#execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] run clear @a[advancements={wancomatter:general/inventory_changed=true}] #wancomatter:seal{seal:1b}

loot replace entity @a container.16 loot wancomatter:seal
loot replace entity @a container.23 loot wancomatter:seal3
item replace entity @a[tag=!op] container.34 with minecraft:written_book{display:{Name:'{"text":"OP: モニター権限を取得","italic":false,"color":"light_purple"}'},title:"",author:"",pages:['{"text":"\\n\\n\\u0020\\u0020\\u0020【ここをクリック！】","color":"light_purple","hoverEvent":{"action":"show_text","value":[{"text":"ゲーム設定モニターの権限を取得します。\\n※op権限を持つプレイヤー限定"}]},"clickEvent":{"action":"run_command","value":"/function wancomatter:lobby/get_op"}}'],invGUI:-18b}

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] run function wancomatter:lobby/cost

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost < #lobby cost run function wancomatter:lobby/showcost
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run loot replace entity @s enderchest.0 loot wancomatter:clear
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s container.35 with minecraft:structure_void{display:{Name:'{"text":"残コスト:0","color":"red","italic":false}'},seal:1b}

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run loot replace entity @s enderchest.0 loot wancomatter:clear
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] unless score @s cost >= #lobby cost run tag @s add item_show
execute if entity @a[tag=item_show,limit=1] as @a[tag=item_show] run function wancomatter:lobby/9-enderchest_items

execute if score #autostart counter matches 0.. run function wancomatter:lobby/autostart/tick
execute if score #monitor counter matches 1 as @a if score @s playerNumber = #monitor playerNumber at @s if entity @s[y=68.35,dy=10] run function wancomatter:lobby/monitor/open
execute if score #monitor counter matches 2 as @a if score @s playerNumber = #monitor playerNumber at @s run function wancomatter:lobby/monitor/tick

execute if entity @a[advancements={wancomatter:monitor_ui=true},limit=1] run advancement revoke @a[advancements={wancomatter:monitor_ui=true}] only wancomatter:monitor_ui

