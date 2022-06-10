execute store result score #timeModify subcounter run time query daytime
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 時刻が "},{"score":{"name":"#timeModify","objective":"subcounter"},"color":"aqua","bold":true},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset