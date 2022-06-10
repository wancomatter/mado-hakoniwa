scoreboard players set #stagechanged counter 1
scoreboard players set #stagechanged subcounter 5
scoreboard players set #stagechangeing counter 1
execute unless entity @s run tellraw @a [{"text":"["},{"text":"システム","color":"white"},{"text":"] ステージ:"},{"text":"研究所","color":"aqua","bold":true},{"text":" を選択しました。"}]
execute if entity @s run tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] ステージ:"},{"text":"研究所","color":"aqua","bold":true},{"text":" を選択しました。"}]
execute if entity @s run function wancomatter:lobby/monitor/reset
function wancomatter:map/0_replace_air
function wancomatter:map/5_iron_lab