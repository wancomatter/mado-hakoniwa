scoreboard players set #teamModify counter 3
team leave @a[team=!z_spectate]
function wancomatter:lobby/monitor/pvp/team_loop
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"チームを "},{"text":"3チーム","color":"aqua","bold":true},{"text":" に振り分けました。"}]
function wancomatter:general/teamnumber_set
function wancomatter:lobby/monitor/reset