scoreboard players add @s counter 1
particle witch ^ ^ ^0.1 0 0 0 0 1 force @a
particle witch ^ ^ ^0.2 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.3 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.4 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.5 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.6 0 0 0 0 1 force @a
particle witch ^ ^ ^0.7 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.8 0 0 0 0 1 normal @a
particle witch ^ ^ ^0.9 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.0 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.1 0 0 0 0 1 force @a
particle witch ^ ^ ^1.2 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.3 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.4 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.5 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.6 0 0 0 0 1 force @a
particle witch ^ ^ ^1.7 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.8 0 0 0 0 1 normal @a
particle witch ^ ^ ^1.9 0 0 0 0 1 normal @a
particle witch ^ ^ ^2.0 0 0 0 0 1 normal @a
tp @s ^ ^ ^2.0
execute if score @s counter matches 2..19 unless block ^ ^ ^-0.5 #wancomatter:air positioned ^ ^ ^-1.0 run function wancomatter:boss/necro/skill13/3
execute if score @s counter matches 2..19 unless block ^ ^ ^ #wancomatter:air positioned ^ ^ ^-0.5 run function wancomatter:boss/necro/skill13/3
execute if score @s counter matches 2..19 unless block ^ ^ ^0.5 #wancomatter:air positioned ^ ^ ^0.0 run function wancomatter:boss/necro/skill13/3
execute if score @s counter matches 2..19 unless block ^ ^ ^1.0 #wancomatter:air positioned ^ ^ ^0.5 run function wancomatter:boss/necro/skill13/3
execute if score @s counter matches 20.. run kill @s
