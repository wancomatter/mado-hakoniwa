execute if score #gamemode counter matches 1 unless score #timeover_setting counter matches 2 run function wancomatter:game/timeover/default
execute if score #gamemode counter matches 1 if score #timeover_setting counter matches 2 run function wancomatter:game/timeover/narrow
#execute if score #gamemode counter matches 1 if score #timeover_setting counter matches 3 run function wancomatter:game/timeover/ender_dragon
execute if score #gamemode counter matches 12 run function wancomatter:game/win/lose
execute if score #gamemode counter matches 4 run function wancomatter:game/timeover/default