scoreboard players set #difficult counter 1
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"難易度を "},{"text":"イージー","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"初心者向け難易度。\n攻撃が緩く、ボスHPも低くなります。"}},{"text":" に変更しました。"}]
function wancomatter:lobby/monitor/reset