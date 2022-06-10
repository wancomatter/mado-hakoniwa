scoreboard players add #autostart_randomstage counter 1
execute if score #autostart_randomstage counter matches 1 run tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 自動ランダムステージ切り替えを:"},{"text":"オン","color":"aqua","bold":true},{"text":" にしました。"}]
execute if score #autostart_randomstage counter matches 1 run data modify entity @e[tag=monitorUIfocus,tag=monitorUI13-0,limit=1] Item.tag.Enchantments set value [{}]
execute if score #autostart_randomstage counter matches 2 run tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] 自動ランダムステージ切り替えを:"},{"text":"オフ","color":"aqua","bold":true},{"text":" にしました。"}]
execute if score #autostart_randomstage counter matches 2 run data remove entity @e[tag=monitorUIfocus,tag=monitorUI13-0,limit=1] Item.tag.Enchantments
execute if score #autostart_randomstage counter matches 2.. run scoreboard players set #autostart_randomstage counter 0