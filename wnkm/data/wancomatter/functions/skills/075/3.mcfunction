scoreboard players remove @s subcounter 1
execute if score @s subcounter matches ..0 run scoreboard players operation #dummy teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber
execute if score @s subcounter matches ..0 run function wancomatter:skills/075/buff

particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~36 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~72 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~108 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~144 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~180 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~216 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~252 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~288 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute rotated ~324 -1.1 run particle minecraft:end_rod ^ ^0.6 ^8 ^-20000 ^ ^-100000 0.0000095 0 force @a
execute at @s run tp @s ~ ~ ~ ~2.5 0