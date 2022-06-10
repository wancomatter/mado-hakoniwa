# スコア増加
scoreboard players add @s subcounter 1
execute if score @s subcounter matches 16.. run scoreboard players set @s subcounter 1

# バフとダメージ判定
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @a[distance=..4.0,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run tag @s add hit1
execute if score @s subcounter matches 1 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit2
execute if score @s subcounter matches 5 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit2
execute if score @s subcounter matches 9 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit2
execute if score @s subcounter matches 13 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit2
execute if entity @e[tag=hit1,limit=1] as @e[tag=hit1] at @s run function wancomatter:skills/011/buff
execute if entity @e[tag=hit2,limit=1] as @e[tag=hit2] at @s run function wancomatter:skills/011/hit3
scoreboard players reset #dummy teamNumber

# 円パーティクル

execute if score @s subcounter matches 1 facing ^ ^1 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 1 facing ^-0.707106 ^0.707106 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 1 facing ^-1 ^ ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 1 facing ^-0.707106 ^-0.707106 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 1 facing ^ ^-1 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 1 facing ^0.707106 ^-0.707106 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 1 facing ^1 ^ ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 1 facing ^0.707106 ^0.707106 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 2 facing ^-0.207911 ^0.978147 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 2 facing ^-0.838671 ^0.544639 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 2 facing ^-0.978148 ^-0.207912 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 2 facing ^-0.544639 ^-0.838671 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 2 facing ^0.207911 ^-0.978147 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 2 facing ^0.838671 ^-0.544639 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 2 facing ^0.978148 ^0.207912 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 2 facing ^0.544639 ^0.838671 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 3 facing ^-0.406737 ^0.913546 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 3 facing ^-0.933580 ^0.358368 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 3 facing ^-0.913546 ^-0.406737 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 3 facing ^-0.358368 ^-0.933580 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 3 facing ^0.406737 ^-0.913546 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 3 facing ^0.933580 ^-0.358368 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 3 facing ^0.913546 ^0.406737 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 3 facing ^0.358368 ^0.933580 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 4 facing ^-0.587785 ^0.809017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 4 facing ^-0.987688 ^0.156435 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 4 facing ^-0.809017 ^-0.587785 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 4 facing ^-0.156435 ^-0.987688 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 4 facing ^0.587785 ^-0.809017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 4 facing ^0.987688 ^-0.156435 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 4 facing ^0.809017 ^0.587785 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 4 facing ^0.156435 ^0.987688 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 5 facing ^-0.743145 ^0.669131 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 5 facing ^-0.998630 ^-0.052336 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 5 facing ^-0.669131 ^-0.743145 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 5 facing ^0.052336 ^-0.998630 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 5 facing ^0.743145 ^-0.669131 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 5 facing ^0.998630 ^0.052336 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 5 facing ^0.669131 ^0.743145 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 5 facing ^-0.052336 ^0.998630 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 6 facing ^-0.866025 ^0.5 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 6 facing ^-0.965926 ^-0.258819 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 6 facing ^-0.5 ^-0.866025 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 6 facing ^0.258819 ^-0.965926 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 6 facing ^0.866025 ^-0.5 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 6 facing ^0.965926 ^0.258819 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 6 facing ^0.5 ^0.866025 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 6 facing ^-0.258819 ^0.965926 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 7 facing ^-0.951057 ^0.309017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 7 facing ^-0.891007 ^-0.45399 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 7 facing ^-0.309017 ^-0.951057 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 7 facing ^0.45399 ^-0.891007 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 7 facing ^0.951057 ^-0.309017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 7 facing ^0.891007 ^0.45399 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 7 facing ^0.309017 ^0.951057 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 7 facing ^-0.45399 ^0.891007 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 8 facing ^-0.994522 ^0.104529 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 8 facing ^-0.777146 ^-0.62932 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 8 facing ^-0.104529 ^-0.994522 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 8 facing ^0.62932 ^-0.777146 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 8 facing ^0.994522 ^-0.104529 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 8 facing ^0.777146 ^0.62932 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 8 facing ^0.104529 ^0.994522 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 8 facing ^-0.62932 ^0.777146 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 9 facing ^-0.994522 ^-0.104529 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 9 facing ^-0.62932 ^-0.777146 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 9 facing ^0.104529 ^-0.994522 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 9 facing ^0.777146 ^-0.62932 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 9 facing ^0.994522 ^0.104529 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 9 facing ^0.62932 ^0.777146 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 9 facing ^-0.104529 ^0.994522 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 9 facing ^-0.777146 ^0.62932 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 10 facing ^-0.951057 ^-0.309017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 10 facing ^-0.45399 ^-0.891007 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 10 facing ^0.309017 ^-0.951057 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 10 facing ^0.891007 ^-0.45399 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 10 facing ^0.951057 ^0.309017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 10 facing ^0.45399 ^0.891007 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 10 facing ^-0.309017 ^0.951057 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 10 facing ^-0.891007 ^0.45399 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 11 facing ^-0.866025 ^-0.5 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 11 facing ^-0.258819 ^-0.965926 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 11 facing ^0.5 ^-0.866025 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 11 facing ^0.965926 ^-0.258819 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 11 facing ^0.866025 ^0.5 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 11 facing ^0.258819 ^0.965926 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 11 facing ^-0.5 ^0.866025 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 11 facing ^-0.965926 ^0.258819 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 12 facing ^-0.743145 ^-0.669131 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 12 facing ^-0.052336 ^-0.998630 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 12 facing ^0.669131 ^-0.743145 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 12 facing ^0.998630 ^-0.052336 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 12 facing ^0.743145 ^0.669131 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 12 facing ^0.052336 ^0.998630 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 12 facing ^-0.669131 ^0.743145 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 12 facing ^-0.998630 ^0.052336 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 13 facing ^-0.587785 ^-0.809017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 13 facing ^0.156435 ^-0.987688 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 13 facing ^0.809017 ^-0.587785 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 13 facing ^0.987688 ^0.156435 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 13 facing ^0.587785 ^0.809017 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 13 facing ^-0.156435 ^0.987688 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 13 facing ^-0.809017 ^0.587785 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 13 facing ^-0.987688 ^-0.156435 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 14 facing ^-0.406737 ^-0.913546 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 14 facing ^0.358368 ^-0.933580 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 14 facing ^0.913546 ^-0.406737 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 14 facing ^0.933580 ^0.358368 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 14 facing ^0.406737 ^0.913546 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 14 facing ^-0.358368 ^0.933580 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 14 facing ^-0.913546 ^0.406737 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 14 facing ^-0.933580 ^-0.358368 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a

execute if score @s subcounter matches 15 facing ^-0.207911 ^-0.978147 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 15 facing ^0.544639 ^-0.838671 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 15 facing ^0.978147 ^-0.207911 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 15 facing ^0.838671 ^0.544639 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 15 facing ^0.207911 ^0.978147 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 force @a
execute if score @s subcounter matches 15 facing ^-0.544639 ^0.838671 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 15 facing ^-0.978147 ^0.207911 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
execute if score @s subcounter matches 15 facing ^-0.838671 ^-0.544639 ^ run particle minecraft:dust_color_transition 0.0 0.5 1 1.4 1 1 1 ^ ^ ^4 0.1 0.1 0.1 0 1 normal @a
