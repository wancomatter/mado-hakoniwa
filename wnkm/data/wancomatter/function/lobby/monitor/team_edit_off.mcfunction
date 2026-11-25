scoreboard players reset #teamModify Mana
tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"任意チーム変更看板を "},{"text":"撤去","color":"aqua","bold":true},{"text":" しました。"}]
function wancomatter:lobby/monitor/reset
fill -3 64 -3 3 64 3 air replace minecraft:oak_sign
fill -3 64 -3 3 64 3 air replace minecraft:spruce_sign
