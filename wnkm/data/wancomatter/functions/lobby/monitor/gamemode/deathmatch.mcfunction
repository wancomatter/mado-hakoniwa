tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"ゲームモードを "},{"text":"PvP:殲滅戦","color":"aqua","bold":true},{"text":" に変更しました。"}]
tellraw @a {"text":"チームに分かれてプレイヤー同士で戦い、\n最終的に生き残ったチームが勝利となります。"}
execute if score #gamemode counter matches 10.. run function wancomatter:map/1on1/replace_air
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 1 run function wancomatter:lobby/monitor/stage/1_village
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 2 run function wancomatter:lobby/monitor/stage/2_nether
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 3 run function wancomatter:lobby/monitor/stage/3_bamboo
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 4 run function wancomatter:lobby/monitor/stage/4_pylamid
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 5 run function wancomatter:lobby/monitor/stage/5_iron_lab
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 6 run function wancomatter:lobby/monitor/stage/6_river
execute if score #gamemode counter matches 10.. if score #stagechanged subcounter matches 7 run function wancomatter:lobby/monitor/stage/7_altar
scoreboard players set #gamemode counter 1
function wancomatter:lobby/monitor/reset