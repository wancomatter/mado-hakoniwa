execute rotated ~5 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~15 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~25 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~35 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~45 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~55 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~65 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~75 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~85 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~95 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~105 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~115 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~125 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~135 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~145 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~155 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~165 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~175 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~185 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~195 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~205 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~215 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~225 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~235 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~245 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~255 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~265 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~275 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~285 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~295 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~305 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~315 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~325 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~335 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~345 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a
execute rotated ~355 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^7 0 0 0 0 1 normal @a

execute as @e[distance=..7,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run effect give @s minecraft:luck 1 1
execute as @e[distance=..7,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run effect give @s minecraft:slowness 1 0

tag @e[tag=hit] remove hit
scoreboard players set @s subcounter 3