scoreboard players reset #result_setting
execute if score @e[tag=monitorUI12-1,limit=1] counter matches 1 run scoreboard players set #result_setting Cooldown1 1
execute if score @e[tag=monitorUI12-2,limit=1] counter matches 1 run scoreboard players set #result_setting Cooldown2 1
execute if score @e[tag=monitorUI12-3,limit=1] counter matches 1 run scoreboard players set #result_setting Cooldown3 1

tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] リザルトの設定が更新されました。 "}]
function wancomatter:lobby/monitor/reset