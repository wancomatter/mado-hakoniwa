tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"ゲームモードを "},{"text":"PvP:1on1","color":"aqua","bold":true},{"text":" に変更しました。"}]
tellraw @a {"text":"1対1の決闘です。\n2人で看板を右クリックしてゲームを始められます。"}
function wancomatter:map/0_replace_air
function wancomatter:map/1on1/load
scoreboard players set #gamemode counter 10
function wancomatter:lobby/monitor/reset
execute if score #autostart counter matches -2147483648..2147483647 run function wancomatter:lobby/monitor/auto_cancel
