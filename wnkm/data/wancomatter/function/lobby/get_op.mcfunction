# 管理者がチャットから実行する一度きりの権限登録。
execute unless entity @s[type=player,scores={wnkm.schema=1}] run return fail
execute unless score #lobby counter matches 1 run return fail
tellraw @a [{"text":"[システム] "},{"selector":"@s"},{"text":" がゲームモニター権限を取得しました"}]
loot replace entity @s container.34 loot wancomatter:invgui/op
playsound minecraft:entity.player.levelup master @a 0 -30 0 0 0.5 1
clear @s minecraft:written_book[custom_data~{invGUI:-18b}]
tag @s add op
