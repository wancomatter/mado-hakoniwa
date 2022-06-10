scoreboard players set #timeover_setting counter 1
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 時間切れ設定が "},{"text":"そのまま終了","color":"aqua","bold":true},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset