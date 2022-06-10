particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 5 force @a
scoreboard players remove #dummy subcounter 1
scoreboard players remove @s subcounter 1

execute if score #dummy subcounter2 matches -2 unless block ^-0.231 ^ ^0.4 #wancomatter:air run kill @s
execute if score #dummy subcounter2 matches -2 run tp @s ^-0.231 ^ ^0.4
execute if score #dummy subcounter2 matches -1 unless block ^-0.693 ^ ^0.4 #wancomatter:air run kill @s
execute if score #dummy subcounter2 matches -1 run tp @s ^-0.693 ^ ^0.4
execute if score #dummy subcounter2 matches 1 unless block ^0.693 ^ ^0.4 #wancomatter:air run kill @s
execute if score #dummy subcounter2 matches 1 run tp @s ^0.693 ^ ^0.4
execute if score #dummy subcounter2 matches 2 unless block ^0.231 ^ ^0.4 #wancomatter:air run kill @s
execute if score #dummy subcounter2 matches 2 run tp @s ^0.231 ^ ^0.4



execute if score @s subcounter matches 1.. if score #dummy subcounter matches 1.. at @s run function wancomatter:boss/detonator/skill2/move

