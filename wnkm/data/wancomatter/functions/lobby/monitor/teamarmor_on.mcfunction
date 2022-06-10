scoreboard players set #teamArmor counter 1
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"チームアーマーを "},{"text":"有効","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"バトルロワイヤル以外:\n全プレイヤーがチーム色に対応した色のヘルメットを装備します。"}},{"text":" に変更しました。"}]
function wancomatter:lobby/monitor/reset