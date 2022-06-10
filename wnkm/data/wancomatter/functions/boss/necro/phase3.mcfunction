scoreboard players add @s counter 1
execute if score @s subcounter matches 1.. run scoreboard players remove @s subcounter 1

execute if score @s counter matches 1 run function wancomatter:boss/necro/skill8/0
execute if score @s counter matches 260 run function wancomatter:boss/necro/skill6/charge/0
execute if score @s counter matches 260 if score #difficult counter matches 4 run scoreboard players add @s counter 100

execute if score @s counter matches 740 run function wancomatter:boss/necro/skill11/0
execute if score @s counter matches 740 if score #difficult counter matches 4 run scoreboard players add @s counter 15
execute if score @s counter matches 800 run function wancomatter:boss/necro/skill5/0
execute if score @s counter matches 800 if score #difficult counter matches 4 run scoreboard players add @s counter 50
execute if score @s counter matches 900 run scoreboard players set @s subcounter 104
execute if score @s counter matches 900 run function wancomatter:boss/necro/phase3/tp1
execute if score @s counter matches 909 positioned ^ ^ ^3 unless entity @a[distance=..3.5,limit=1] unless entity @s[scores={subcounter=1..}] run scoreboard players remove @s counter 10
execute if score @s counter matches 909 facing entity @a[limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute if score @s counter matches 910 run function wancomatter:boss/necro/skill13/0
execute if score @s counter matches 940 run function wancomatter:boss/necro/phase3/tp2
execute if score @s counter matches 950 run function wancomatter:boss/necro/phase3/tp2
execute if score @s counter matches 960 run function wancomatter:boss/necro/phase3/tp2
execute if score @s counter matches 970 run function wancomatter:boss/necro/phase3/tp2
execute if score @s counter matches 970 if score #difficult counter matches 4 run scoreboard players add @s counter 35


execute if score @s counter matches 1010 run function wancomatter:boss/necro/skill7/0
execute if score @s counter matches 1300.. run scoreboard players set @s counter 0

