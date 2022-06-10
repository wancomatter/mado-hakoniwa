scoreboard players set #difficult counter 2
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"難易度を "},{"text":"ノーマル","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"一般人向け難易度。\nそこそこ手応えのあるボス戦闘を。"}},{"text":" に変更しました。"}]
function wancomatter:lobby/monitor/reset