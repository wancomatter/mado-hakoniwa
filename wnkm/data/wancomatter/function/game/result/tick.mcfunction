effect give @a minecraft:luck 1 9 true
execute if score #gametime counter matches 180 if score #result_setting Cooldown1 matches 1 run function wancomatter:game/result/dealt_ready
execute if score #gametime counter matches 180 unless score #result_setting Cooldown1 matches 1 run scoreboard players add #gametime counter 180
execute if score #gametime counter matches 250 if score #result_setting Cooldown1 matches 1 run function wancomatter:game/result/general
execute if score #gametime counter matches 250 if score #result_setting Cooldown1 matches 1 run function wancomatter:game/result/dealt
execute if score #gametime counter matches 360 if score #result_setting Cooldown2 matches 1 run function wancomatter:game/result/taken_ready
execute if score #gametime counter matches 360 unless score #result_setting Cooldown2 matches 1 run scoreboard players set #gametime counter 1310
execute if score #gametime counter matches 430 if score #result_setting Cooldown2 matches 1 run function wancomatter:game/result/general
execute if score #gametime counter matches 430 if score #result_setting Cooldown2 matches 1 run function wancomatter:game/result/taken
execute if score #gametime counter matches 430..700 run scoreboard players set #gametime counter 1210
execute if score #gametime counter matches 1320 run function wancomatter:game/ending
