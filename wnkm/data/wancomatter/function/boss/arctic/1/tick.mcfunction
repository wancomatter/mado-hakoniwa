execute if score @s counter matches 30.. unless entity @a[distance=..6,limit=1] run function wancomatter:boss/arctic/move/move
execute if score @s counter matches 30.. if entity @a[distance=..6,limit=1] run scoreboard players set @s counter 28
execute if score @s counter matches 30 run scoreboard players set @s counter 28

execute if score @s counter matches 28 run function wancomatter:boss/arctic/1/1-0
execute if score @s counter matches 27 run function wancomatter:boss/arctic/1/1
execute if score @s counter matches 11 run function wancomatter:boss/arctic/1/2
