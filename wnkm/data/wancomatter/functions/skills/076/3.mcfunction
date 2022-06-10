scoreboard players remove @s subcounter 1
execute if score @s subcounter matches ..0 run scoreboard players operation #dummy teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber
execute if score @s subcounter matches ..0 run function wancomatter:skills/076/buff

particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~20 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~40 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~60 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~80 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~100 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~120 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~140 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~160 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~180 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~200 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~220 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~240 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~260 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~280 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~300 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~320 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute rotated ~340 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 ^20000 ^ ^-100000 0.0000065 0 force @a
execute at @s run tp @s ~ ~ ~ ~-2 0