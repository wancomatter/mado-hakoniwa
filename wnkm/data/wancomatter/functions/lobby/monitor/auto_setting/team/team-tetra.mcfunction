scoreboard players set #teamModify counter 14
scoreboard players set #teamModify subcounter 1
team leave @a[team=!z_spectate]
team join Red @a[team=,limit=4,sort=random]
team join Blue @a[team=,limit=4,sort=random]
team join Yellow @a[team=,limit=4,sort=random]
team join Green @a[team=,limit=4,sort=random]
team join Purple @a[team=,limit=4,sort=random]
team join White @a[team=,limit=4,sort=random]
team join Black @a[team=,limit=4,sort=random]
team join Aqua @a[team=,limit=4,sort=random]
team join Pink @a[team=,limit=4,sort=random]
team join Gold @a[team=,limit=4,sort=random]
team join Gray @a[team=,limit=4,sort=random]
team join DarkRed @a[team=,limit=4,sort=random]
team join DarkAqua @a[team=,limit=4,sort=random]
team join DarkGreen @a[team=,limit=4,sort=random]
team join DarkBlue @a[team=,limit=4,sort=random]
team join DarkGray @a[team=,limit=4,sort=random]
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"自動チーム振り分けを "},{"text":"4人組","color":"aqua","bold":true},{"text":" に設定しました。"}]
function wancomatter:lobby/monitor/reset