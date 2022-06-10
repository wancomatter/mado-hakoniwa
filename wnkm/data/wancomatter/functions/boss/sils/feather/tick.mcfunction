execute unless score @s subcounter matches 70 run scoreboard players remove @s subcounter 1
execute if score @s subcounter matches 100 run function wancomatter:boss/sils/feather/1
execute if score @s subcounter matches 70 if entity @s[y=0,dy=14] run function wancomatter:boss/sils/feather/2
execute if score @s subcounter matches 60 run function wancomatter:boss/sils/feather/3
execute if score @s subcounter matches 31 run function wancomatter:boss/sils/feather/4
execute if score @s subcounter matches 1 run scoreboard players set @s subcounter 71