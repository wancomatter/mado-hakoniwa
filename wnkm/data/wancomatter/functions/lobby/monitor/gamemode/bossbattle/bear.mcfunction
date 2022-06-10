execute if score #gamemode counter matches 10.. run function wancomatter:map/1on1/replace_air
scoreboard players set #gamemode counter 12
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"ゲームモードを "},{"text":"PvE:ボスバトル","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"強力なボスにプレイヤー全員で挑みます。\nプレイヤーが全滅するまでにボスを討伐すれば勝利です。"}},{"text":" に変更しました。\n VS 【"},{"text":"凛冽に佇む親子愛 くま","color":"aqua"},{"text":"】"}]
tellraw @a [{"text":" 推奨制限時間:7分(現在:","underlined":true},{"score":{"name":"#gametime","objective":"subcounter"}},{"text":"分)"}]
scoreboard players set #stagechanged counter 1
scoreboard players set #stagechanged subcounter2 5
scoreboard players set #stagechangeing counter 1
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] ステージ:"},{"text":"獣の雪洞","color":"white","bold":true},{"text":" を選択しました。\n"},{"text":"--------------------------------","italic":false,"color":"gray"}]
execute if entity @s run function wancomatter:lobby/monitor/reset
function wancomatter:map/0_replace_air
function wancomatter:map/ex4_kamakura