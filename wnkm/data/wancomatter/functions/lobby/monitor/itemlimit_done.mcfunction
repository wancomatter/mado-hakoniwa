scoreboard players operation #lobby cost = #costModify counter
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 装備上限が "},{"score":{"name":"#lobby","objective":"cost"},"color":"aqua","bold":true},{"text":"個","color":"aqua"},{"text":" に設定されました。"}]
execute as @a if score @s cost > #lobby cost run tellraw @s {"text":"[システム] コストオーバーした為、アイテムを消去しました。","color":"red"}
execute as @a if score @s cost > #lobby cost run clear @s
function wancomatter:lobby/monitor/reset