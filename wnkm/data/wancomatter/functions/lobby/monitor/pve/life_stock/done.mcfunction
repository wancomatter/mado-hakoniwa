scoreboard players operation #pve_lifestock counter = #lifeModify counter
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] プレイヤーの残機が "},{"score":{"name":"#pve_lifestock","objective":"counter"},"color":"aqua","bold":true},{"text":" に設定されました。"}]
function wancomatter:lobby/monitor/reset