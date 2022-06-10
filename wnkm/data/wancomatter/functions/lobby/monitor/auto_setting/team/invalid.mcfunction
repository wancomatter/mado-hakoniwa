scoreboard players set #teamModify counter 2
scoreboard players reset #teamModify subcounter
team leave @a[team=!z_spectate]
function wancomatter:lobby/monitor/pvp/team_loop
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"自動チーム振り分けを "},{"text":"無効化","color":"aqua","bold":true},{"text":" しました。"}]
function wancomatter:lobby/monitor/reset