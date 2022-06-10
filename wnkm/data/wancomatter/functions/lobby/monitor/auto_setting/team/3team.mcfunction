scoreboard players set #teamModify counter 3
scoreboard players set #teamModify subcounter 1
team leave @a[team=!z_spectate]
function wancomatter:lobby/monitor/pvp/team_loop
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"自動チーム振り分けを "},{"text":"3チーム","color":"aqua","bold":true},{"text":" に設定しました。"}]
function wancomatter:lobby/monitor/reset