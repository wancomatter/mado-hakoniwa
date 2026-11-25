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

execute as @a[scores={pageChange=1..}] at @s run function wancomatter:lobby/pagechange
execute as @a unless data entity @s {Inventory:[{Slot:10b,components:{"minecraft:custom_data":{invGUI:10b}}}]} run scoreboard players set @s pageChange 2
execute as @a unless data entity @s {Inventory:[{Slot:11b,components:{"minecraft:custom_data":{invGUI:11b}}}]} run scoreboard players set @s pageChange 3
execute as @a unless data entity @s {Inventory:[{Slot:12b,components:{"minecraft:custom_data":{invGUI:12b}}}]} run scoreboard players set @s pageChange 4
execute as @a unless data entity @s {Inventory:[{Slot:13b,components:{"minecraft:custom_data":{invGUI:13b}}}]} run scoreboard players set @s pageChange 5
execute as @a unless data entity @s {Inventory:[{Slot:14b,components:{"minecraft:custom_data":{invGUI:14b}}}]} run scoreboard players set @s pageChange 6
execute as @a unless data entity @s {Inventory:[{Slot:15b,components:{"minecraft:custom_data":{invGUI:15b}}}]} run scoreboard players set @s pageChange 7
#execute as @a unless data entity @s {Inventory:[{Slot:16b,tag:{invGUI:16b}}]} run scoreboard players set @s pageChange 8
execute as @a unless data entity @s {Inventory:[{Slot:17b,components:{"minecraft:custom_data":{invGUI:17b}}}]} run scoreboard players set @s pageChange 9
execute as @a unless data entity @s {Inventory:[{Slot:18b,components:{"minecraft:custom_data":{invGUI:18b}}}]} run scoreboard players set @s pageChange 11
execute as @a unless data entity @s {Inventory:[{Slot:19b,components:{"minecraft:custom_data":{invGUI:19b}}}]} run scoreboard players set @s pageChange 12
execute as @a unless data entity @s {Inventory:[{Slot:20b,components:{"minecraft:custom_data":{invGUI:20b}}}]} run scoreboard players set @s pageChange 13
execute as @a unless data entity @s {Inventory:[{Slot:21b,components:{"minecraft:custom_data":{invGUI:21b}}}]} run scoreboard players set @s pageChange 14
execute as @a unless data entity @s {Inventory:[{Slot:22b,components:{"minecraft:custom_data":{invGUI:22b}}}]} run scoreboard players set @s pageChange 15
execute as @a unless data entity @s {Inventory:[{Slot:26b,components:{"minecraft:custom_data":{invGUI:26b}}}]} run scoreboard players set @s pageChange 19
execute as @a[tag=op] unless data entity @s {Inventory:[{Slot:34b,components:{"minecraft:custom_data":{invGUI:34b}}}]} run scoreboard players set @s pageChange -1
execute as @a unless data entity @s {Inventory:[{Slot:9b,components:{"minecraft:custom_data":{invGUI:9b}}}]} run scoreboard players set @s pageChange 1

execute if entity @a[scores={pageChange=-1..},limit=1] as @a[scores={pageChange=-1..}] at @s run function wancomatter:lobby/pagechange

#execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] run say t
#execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] run clear @a[advancements={wancomatter:general/inventory_changed=true}] #wancomatter:seal{seal:1b}

loot replace entity @a container.16 loot wancomatter:seal
loot replace entity @a container.23 loot wancomatter:seal3
execute as @a[tag=!op,scores={wnkm.schema=1}] unless items entity @s container.34 written_book[custom_data~{invGUI:-18b,wnkm_book:3b}] run item replace entity @s container.34 with minecraft:written_book[custom_data={invGUI:-18b,wnkm_book:3b},custom_name={color:"light_purple",italic:0b,text:"OP: モニター権限を取得"},written_book_content={author:"",pages:[{raw:{click_event:{action:"copy_to_clipboard",value:"/function wancomatter:lobby/get_op"},color:"light_purple",hover_event:{action:"show_text",value:[{text:"ゲーム設定モニターの権限を取得します。\n※op権限を持つプレイヤー限定"}]},text:"\n\n   【コマンドをコピー】\n\nチャット欄に貼り付けて実行してください。"}}],title:{raw:""}}]

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] run function wancomatter:lobby/cost

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost < #lobby cost run function wancomatter:lobby/showcost
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.0 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.1 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.2 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.3 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.4 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.5 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.6 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.7 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.8 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.9 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.10 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.11 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.12 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.13 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.14 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.15 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.16 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.17 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.18 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.19 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.20 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.21 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.22 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.23 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.24 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.25 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.26 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s container.35 with minecraft:structure_void[custom_data={seal:1b},custom_name={color:"red",italic:0b,text:"残コスト:0"}]

execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.0 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.1 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.2 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.3 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.4 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.5 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.6 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.7 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.8 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.9 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.10 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.11 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.12 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.13 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.14 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.15 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.16 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.17 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.18 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.19 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.20 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.21 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.22 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.23 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.24 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.25 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] if score @s cost >= #lobby cost run item replace entity @s enderchest.26 with air
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] unless score @s cost >= #lobby cost run tag @s add item_show
execute if entity @a[tag=item_show,limit=1] as @a[tag=item_show] run function wancomatter:lobby/9-enderchest_items

execute if score #autostart counter matches 0.. run function wancomatter:lobby/autostart/tick
execute if score #monitor counter matches 1 as @a if score @s playerNumber = #monitor playerNumber at @s if entity @s[y=68.35,dy=10] run function wancomatter:lobby/monitor/open
execute if score #monitor counter matches 2 as @a if score @s playerNumber = #monitor playerNumber at @s run function wancomatter:lobby/monitor/tick

execute if entity @a[advancements={wancomatter:monitor_ui=true},limit=1] run advancement revoke @a[advancements={wancomatter:monitor_ui=true}] only wancomatter:monitor_ui
