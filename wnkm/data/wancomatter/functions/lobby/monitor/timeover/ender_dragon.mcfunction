scoreboard players set #timeover_setting counter 3
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 時間切れ設定が "},{"text":"エンダードラゴン襲来","color":"aqua","bold":true},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset