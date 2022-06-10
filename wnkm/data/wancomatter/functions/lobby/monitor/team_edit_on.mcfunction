scoreboard players set #teamModify Mana 1
execute if entity @s run tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"任意チーム変更看板を "},{"text":"設置","color":"aqua","bold":true},{"text":" しました。"}]
execute if entity @s run function wancomatter:lobby/monitor/reset
fill -3 64 -3 3 64 3 air replace minecraft:oak_sign
fill -3 64 -3 3 64 3 air replace minecraft:spruce_sign
setblock 3 64 3 minecraft:oak_sign[rotation=6]{Color:"black",Text1:'{"text":"----------------","color":"dark_gray","clickEvent":{"action":"run_command","value":"function wancomatter:lobby/sign/red"}}',Text2:'{"text":"Red Team","color":"red"}',Text3:'{"text":"Click Here!"}',Text4:'{"text":"----------------","color":"dark_gray"}'}
setblock -3 64 -3 minecraft:oak_sign[rotation=14]{Color:"black",Text1:'{"text":"----------------","color":"dark_gray","clickEvent":{"action":"run_command","value":"function wancomatter:lobby/sign/blue"}}',Text2:'{"text":"Blue Team","color":"blue"}',Text3:'{"text":"Click Here!"}',Text4:'{"text":"----------------","color":"dark_gray"}'}
setblock 3 64 -3 minecraft:spruce_sign[rotation=2]{Color:"black",Text1:'{"text":"----------------","color":"dark_gray","clickEvent":{"action":"run_command","value":"function wancomatter:lobby/sign/green"}}',Text2:'{"text":"Green Team","color":"green"}',Text3:'{"text":"Click Here!"}',Text4:'{"text":"----------------","color":"dark_gray"}'}
setblock -3 64 3 minecraft:spruce_sign[rotation=10]{Color:"black",Text1:'{"text":"----------------","color":"dark_gray","clickEvent":{"action":"run_command","value":"function wancomatter:lobby/sign/yellow"}}',Text2:'{"text":"Yellow Team","color":"yellow"}',Text3:'{"text":"Click Here!"}',Text4:'{"text":"----------------","color":"dark_gray"}'}
