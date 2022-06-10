scoreboard players add @s counter 1
execute if entity @s[tag=b4left] if block ^1 ^1 ^ #wancomatter:air run scoreboard players set @s counter 30
execute if entity @s[tag=b4right] if block ^-1 ^1 ^ #wancomatter:air run scoreboard players set @s counter 30
execute unless score @s counter matches 13.. if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^1 run function wancomatter:boss/arctic/target/loop2