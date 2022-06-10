particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 6 normal @a

execute rotated ~ -10 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~180 10 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~90 0 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~-90 0 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~45 -5 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~225 -5 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~135 5 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
execute rotated ~315 5 run particle minecraft:soul_fire_flame ^ ^-0.5 ^4 ^ ^100000 ^-30000 0.000005 0 force @a
tp @s ~ ~ ~ ~-7 -10

scoreboard players add @s subcounter 1
scoreboard players add @s subcounter2 1
execute if score @s subcounter matches 4.. run function wancomatter:skills/082/horming
execute if score @s subcounter2 matches 20.. run function wancomatter:skills/082/dmg
