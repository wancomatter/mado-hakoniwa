scoreboard players set #timeover_setting counter 2
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 時間切れ設定が "},{"text":"範囲を縮小する","color":"aqua","bold":true},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset