scoreboard players operation #gametime subcounter = #timeModify counter
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 制限時間が "},{"score":{"name":"#gametime","objective":"subcounter"},"color":"aqua","bold":true},{"text":"分","color":"aqua"},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset