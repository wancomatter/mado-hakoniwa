scoreboard players set #teamModify counter 11
team join battleroyal @a[team=!z_spectate]
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"チームを "},{"text":"バトルロワイヤル","color":"aqua","bold":true},{"text":" に振り分けました。"}]
function wancomatter:general/teamnumber_set
function wancomatter:lobby/monitor/reset