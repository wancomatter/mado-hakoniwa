scoreboard players remove @s dummy 1
execute if entity @s[distance=..0.5] run scoreboard players set @s dummy -10
execute if entity @s[tag=avoid] unless block ~ ~1 ~ #wancomatter:air run function wancomatter:boss/arctic/target/hit_wall
execute if score @s dummy matches 1.. if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^0.25 run function wancomatter:boss/arctic/target/loop