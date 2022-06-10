tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] "},{"text":"自動開始","color":"red"},{"text":"の設定が無効化されました。 "}]
scoreboard players reset #autostart counter
scoreboard players reset #autostart subcounter2
bossbar remove wnkm:autostart
function wancomatter:lobby/monitor/reset