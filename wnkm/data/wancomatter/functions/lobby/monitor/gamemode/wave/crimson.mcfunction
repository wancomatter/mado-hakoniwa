execute if score #gamemode counter matches 10.. run function wancomatter:map/1on1/replace_air
scoreboard players set #gamemode counter 11
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"ゲームモードを "},{"text":"PvE:Wave","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"強力な敵がウェーブ毎に襲ってくるゲームモードです。\n"}},{"text":" に変更しました。"}]
scoreboard players set #stagechanged counter 1
scoreboard players set #stagechanged subcounter2 1
scoreboard players set #stagechangeing counter 1
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] ステージ:"},{"text":"真紅の傷跡","color":"aqua","bold":true},{"text":" を選択しました。\n"},{"text":"--------------------------------","italic":false,"color":"gray"}]
execute if entity @s run function wancomatter:lobby/monitor/reset
function wancomatter:map/0_replace_air
function wancomatter:map/wave/1_crimson