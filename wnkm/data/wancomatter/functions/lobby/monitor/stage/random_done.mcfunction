scoreboard players reset #randomSwitch
execute if score @e[tag=monitorUI3-0-1,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown1 1
execute if score @e[tag=monitorUI3-0-2,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown2 1
execute if score @e[tag=monitorUI3-0-3,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown3 1
execute if score @e[tag=monitorUI3-0-4,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown4 1
execute if score @e[tag=monitorUI3-0-5,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown5 1
execute if score @e[tag=monitorUI3-0-6,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown6 1
execute if score @e[tag=monitorUI3-0-7,limit=1] counter matches 1 run scoreboard players set #randomSwitch Cooldown7 1

tellraw @a [{"text":"["},{"selector":"@s","color":"white"},{"text":"] "},{"text":"ステージ:ランダム候補の設定を"}]
execute if score #randomSwitch Cooldown1 matches 1 run tellraw @a [{"text":"・草原の村","color":"gold"}]
execute if score #randomSwitch Cooldown2 matches 1 run tellraw @a [{"text":"・ネザー","color":"gold"}]
execute if score #randomSwitch Cooldown3 matches 1 run tellraw @a [{"text":"・竹林","color":"gold"}]
execute if score #randomSwitch Cooldown4 matches 1 run tellraw @a [{"text":"・ピラミッド","color":"gold"}]
execute if score #randomSwitch Cooldown5 matches 1 run tellraw @a [{"text":"・研究所","color":"gold"}]
execute if score #randomSwitch Cooldown6 matches 1 run tellraw @a [{"text":"・川","color":"gold"}]
execute if score #randomSwitch Cooldown7 matches 1 run tellraw @a [{"text":"・祭壇","color":"gold"}]
tellraw @a [{"text":"に設定しました。"}]
function wancomatter:lobby/monitor/stage