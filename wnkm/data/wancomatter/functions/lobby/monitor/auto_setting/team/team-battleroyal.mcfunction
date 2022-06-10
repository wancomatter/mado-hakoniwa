scoreboard players set #teamModify counter 11
scoreboard players set #teamModify subcounter 1
team join battleroyal @a[team=!z_spectate]
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"自動チーム振り分けを "},{"text":"バトルロワイヤル","color":"aqua","bold":true},{"text":" に設定しました。"}]
function wancomatter:lobby/monitor/reset