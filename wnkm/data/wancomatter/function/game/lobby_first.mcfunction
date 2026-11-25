function wnkm:game/0.end
scoreboard players reset #wave wnkm.wave
execute as @e[type=!player,tag=wnkm.owned,tag=!stable,tag=!monitorUI,tag=!monitorUIslime,tag=!spawnStand,tag=!firstspawnStand] run function wnkm:entity/0.discard
setblock 0 73 0 minecraft:structure_block{mode:"LOAD",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-15,posY:-16,posZ:-15,sizeX:31,sizeY:25,sizeZ:31,name:"wnkm:lobby",showboundingbox:0b}
setblock 0 74 0 redstone_block
fill 16 63 1 1 63 16 minecraft:red_stained_glass replace minecraft:air
fill -1 63 16 -16 63 1 minecraft:yellow_stained_glass replace minecraft:air
fill -16 63 -1 -1 63 -16 minecraft:blue_stained_glass replace minecraft:air
fill 1 63 -16 16 63 -1 minecraft:green_stained_glass replace minecraft:air
fill 16 63 16 -16 63 -16 minecraft:quartz_block replace minecraft:air
#fill -16 56 -16 16 82 16 minecraft:barrier outline
#fill -16 83 -16 16 84 16 minecraft:barrier keep
kill @e[tag=lobby_entity]
summon minecraft:armor_stand 0 66.3 4.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{bold:1b,color:"aqua",text:"装備選択"}}
summon minecraft:armor_stand 0 66.0 4.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"エンダーチェストから装備を選択出来ます。"}}
summon minecraft:armor_stand 0 65.7 4.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"インベントリのアイテムをクリックすると"}}
summon minecraft:armor_stand 0 65.4 4.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"エンダーチェストのページが切り替わります。"}}

summon minecraft:armor_stand 4.5 66.3 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{bold:1b,color:"aqua",text:"MPと満腹度"}}
summon minecraft:armor_stand 4.5 66.0 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"この世界にはMPの要素があり、"}}
summon minecraft:armor_stand 4.5 65.7 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"大抵の装備の特殊効果はMPを消費して発動します。"}}
summon minecraft:armor_stand 4.5 65.4 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"MPは1秒毎に最大値の1%が自然回復します。"}}
summon minecraft:armor_stand 4.5 65.1 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"また満腹度はMPの割合に比例して増減します。"}}

summon minecraft:armor_stand -3.5 66.3 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{bold:1b,color:"aqua",text:"ダメージの種類"}}
summon minecraft:armor_stand -3.5 66.0 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"ダメージは物理、魔法、防御貫通の3種類があり、"}}
summon minecraft:armor_stand -3.5 65.7 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"物理は物理耐性、魔法は魔法耐性で軽減出来ます。"}}
summon minecraft:armor_stand -3.5 65.4 0 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"防御貫通はこれらの耐性を無効化して攻撃します。"}}

summon minecraft:armor_stand 0 66.3 -3.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{bold:1b,color:"aqua",text:"装備コスト"}}
summon minecraft:armor_stand 0 66.0 -3.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"装備は1個につき1コストかかります。"}}
summon minecraft:armor_stand 0 65.7 -3.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"装備上限は管理者が設定で変更できます。"}}
summon minecraft:armor_stand 0 65.4 -3.5 {CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["lobby_entity","stable","wnkm.owned"],CustomName:{text:"エンダーチェストに装備を戻すとコストが戻ります。"}}

setblock 0 65 -17 minecraft:birch_wall_sign[facing=south]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 0 65 17 minecraft:birch_wall_sign[facing=north]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock -17 65 0 minecraft:birch_wall_sign[facing=east]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 17 65 0 minecraft:birch_wall_sign[facing=west]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 0 65 -18 minecraft:birch_wall_sign[facing=north]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 0 65 18 minecraft:birch_wall_sign[facing=south]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock -18 65 0 minecraft:birch_wall_sign[facing=west]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 18 65 0 minecraft:birch_wall_sign[facing=east]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/switch"}},{"text":"参加 / 観戦"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
execute if score #teamModify Mana matches 1 run function wancomatter:lobby/monitor/team_edit_on
tp @a 0 65 0
team join Red @a[scores={pvpteamsaver=1},team=!z_spectate]
team join Aqua @a[scores={pvpteamsaver=2},team=!z_spectate]
team join Yellow @a[scores={pvpteamsaver=3},team=!z_spectate]
team join Green @a[scores={pvpteamsaver=4},team=!z_spectate]
team join Purple @a[scores={pvpteamsaver=5},team=!z_spectate]
team join White @a[scores={pvpteamsaver=6},team=!z_spectate]
team join Black @a[scores={pvpteamsaver=7},team=!z_spectate]
team join Blue @a[scores={pvpteamsaver=8},team=!z_spectate]
team join Pink @a[scores={pvpteamsaver=9},team=!z_spectate]
team join Gold @a[scores={pvpteamsaver=10},team=!z_spectate]
team join Gray @a[scores={pvpteamsaver=11},team=!z_spectate]
team join DarkRed @a[scores={pvpteamsaver=12},team=!z_spectate]
team join DarkAqua @a[scores={pvpteamsaver=13},team=!z_spectate]
team join DarkGreen @a[scores={pvpteamsaver=14},team=!z_spectate]
team join DarkBlue @a[scores={pvpteamsaver=15},team=!z_spectate]
team join DarkGray @a[scores={pvpteamsaver=16},team=!z_spectate]
team join noPush @a[scores={pvpteamsaver=17},team=!z_spectate]
team join z_spectate @a[scores={pvpteamsaver=-1}]


execute positioned 0 64 0 run function wancomatter:general/sandbag-summon
worldborder set 1000000
difficulty normal
gamemode adventure @a[gamemode=spectator,tag=!creative]
scoreboard objectives setdisplay sidebar
scoreboard players set #lobby counter 1
scoreboard players reset #game counter
scoreboard players reset #stagechanged counter
execute if score #teamModify subcounter matches 1 run function wancomatter:game/auto/team
execute if score #autostart_randomstage counter matches 1 if score #gamemode counter matches 1 run function wancomatter:lobby/monitor/stage/random_check
execute if score #autostart_randomstage counter matches 1 if score #gamemode counter matches 4 run function wancomatter:lobby/monitor/stage/random_check
#execute if score #autostart subcounter2 matches 29.. if score #teamModify subcounter matches 1 run function wancomatter:game/auto/team
#execute if score #autostart subcounter2 matches 29.. if score #autostart_randomstage counter matches 1 if score #gamemode counter matches 1 run function wancomatter:lobby/monitor/stage/random_check
execute if score #autostart subcounter2 matches 29.. run function wancomatter:lobby/autostart/auto_restart
