execute as @a unless score @s gameNumber = #gameNumber counter run function wancomatter:game/join_player

scoreboard players remove #gametime subcounter2 1
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 1 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 草原の村 ","color":"green"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 2 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" ネザー ","color":"dark_red"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 3 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 竹林 ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 4 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" ピラミッド ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 5 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 研究所 ","color":"white"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 6 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 川 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 7 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 1 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 凍の神殿 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2..3 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 黒星の間 ","color":"dark_purple"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 4 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 死霊祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 5 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 獣の雪洞 ","color":"dark_purple"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 1 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 草原の村 ","color":"green"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 2 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" ネザー ","color":"dark_red"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 3 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 竹林 ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 4 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" ピラミッド ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 5 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 研究所 ","color":"white"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 6 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 川 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 7 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:gametime value run scoreboard players get #gametime subcounter2
bossbar set wnkm:gametime players @a
scoreboard players set #gametime counter 0

execute if score #gametime subcounter2 matches 600 run tellraw @a {"text":"[システム] 残り10分です。"}
execute if score #gametime subcounter2 matches 300 run tellraw @a {"text":"[システム] 残り5分です。"}
execute if score #gametime subcounter2 matches 180 run tellraw @a {"text":"[システム] 残り3分です。"}
execute if score #gametime subcounter2 matches 60 run tellraw @a {"text":"[システム] 残り60秒です。"}
execute if score #gametime subcounter2 matches 30 run tellraw @a {"text":"[システム] 残り30秒です。"}
execute if score #gametime subcounter2 matches 10 run tellraw @a {"text":"[システム] 残り10秒です。"}
execute if score #gametime subcounter2 matches 1..5 run tellraw @a [{"text":"[システム] "},{"score":{"name":"#gametime","objective":"subcounter2"}}]
execute if score #gametime subcounter2 matches 1..5 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~-100 ~ 0 1.5 1
execute if score #gametime subcounter2 matches 0 run function wancomatter:game/timeover

execute if score #gametime subcounter2 matches -55 if score #gamemode counter matches 1 if score #timeover_setting counter matches 2 if score #stagechanged subcounter matches 1 run fill 11 33 -11 -11 36 11 minecraft:air destroy
execute if score #gametime subcounter2 matches -55 if score #gamemode counter matches 1 if score #timeover_setting counter matches 2 if score #stagechanged subcounter matches 4 run function wancomatter:game/control_terrain/4
execute if score #gametime subcounter2 matches -55 if score #gamemode counter matches 1 if score #timeover_setting counter matches 2 run function wancomatter:game/control_terrain/4
execute if score #gametime subcounter2 matches -55 if score #gamemode counter matches 1 if score #timeover_setting counter matches 2 run worldborder set 11 60
