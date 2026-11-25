scoreboard players set #teamModify Mana 1
execute if entity @s run tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"任意チーム変更看板を "},{"text":"設置","color":"aqua","bold":true},{"text":" しました。"}]
execute if entity @s run function wancomatter:lobby/monitor/reset
fill -3 64 -3 3 64 3 air replace minecraft:oak_sign
fill -3 64 -3 3 64 3 air replace minecraft:spruce_sign
setblock 3 64 3 minecraft:oak_sign[rotation=6]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/red"}},{"text":"Red Team","color":"red"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock -3 64 -3 minecraft:oak_sign[rotation=14]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/blue"}},{"text":"Blue Team","color":"blue"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock 3 64 -3 minecraft:spruce_sign[rotation=2]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/green"}},{"text":"Green Team","color":"green"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
setblock -3 64 3 minecraft:spruce_sign[rotation=10]{front_text:{messages:[{"text":"----------------","color":"dark_gray","click_event":{"action":"run_command","command":"/function wancomatter:lobby/sign/yellow"}},{"text":"Yellow Team","color":"yellow"},{"text":"Click Here!"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
