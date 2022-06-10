scoreboard players set @s subcounter 0
execute anchored eyes positioned ^ ^ ^0.4 as @e[tag=this] run function wancomatter:skills/009/second_loop

execute anchored eyes run tp @e[tag=this] ^ ^ ^0.6

execute anchored eyes positioned ^0.8 ^0.8 ^0.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^-0.8 ^0.8 ^0.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^0.8 ^-0.8 ^0.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute anchored eyes positioned ^-0.8 ^-0.8 ^0.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute as @e[tag=betelgeuse_marker] at @s facing entity @e[tag=this] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=betelgeuse_-90] at @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[tag=betelgeuse_marker] at @s run function wancomatter:skills/009/first_loop1
kill @e[tag=betelgeuse_marker]

execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^1.1

execute anchored eyes positioned ^1.0 ^1.0 ^1.1 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^-1.0 ^1.0 ^1.1 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^1.0 ^-1.0 ^1.1 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute anchored eyes positioned ^-1.0 ^-1.0 ^1.1 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute as @e[tag=betelgeuse_marker] at @s facing entity @e[tag=this] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=betelgeuse_-90] at @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[tag=betelgeuse_marker] at @s run function wancomatter:skills/009/first_loop2
kill @e[tag=betelgeuse_marker]
execute as @a[tag=user] anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^1.6

execute anchored eyes positioned ^1.2 ^1.2 ^1.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^-1.2 ^1.2 ^1.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^1.2 ^-1.2 ^1.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute anchored eyes positioned ^-1.2 ^-1.2 ^1.6 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute as @e[tag=betelgeuse_marker] at @s facing entity @e[tag=this] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=betelgeuse_-90] at @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[tag=betelgeuse_marker] at @s run function wancomatter:skills/009/first_loop3
kill @e[tag=betelgeuse_marker]

execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^1.8

execute anchored eyes positioned ^1.2 ^1.2 ^1.8 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^-1.2 ^1.2 ^1.8 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker"]}
execute anchored eyes positioned ^1.2 ^-1.2 ^1.8 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute anchored eyes positioned ^-1.2 ^-1.2 ^1.8 run summon marker ~ ~ ~ {Tags:["betelgeuse_marker","betelgeuse_-90"]}
execute as @e[tag=betelgeuse_marker] at @s facing entity @e[tag=this] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=betelgeuse_-90] at @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[tag=betelgeuse_marker] at @s run function wancomatter:skills/009/first_loop4
kill @e[tag=betelgeuse_marker]


execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^
execute as @e[tag=first] at @s facing entity @e[tag=this,limit=1] feet run tp @s ^ ^ ^-4.3 ~ ~
tag @e[tag=first] remove first

tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @s add betelgeuse_user
tp @e[tag=this] @s
tag @e[tag=this] remove this

