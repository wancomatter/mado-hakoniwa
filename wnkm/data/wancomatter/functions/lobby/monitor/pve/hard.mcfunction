scoreboard players set #difficult counter 3
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"難易度を "},{"text":"ハード","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"上級者向け難易度。\n行動パターン追加や攻撃強化に対応しよう。"}},{"text":" に変更しました。"}]
function wancomatter:lobby/monitor/reset