execute if score @s counter matches 1000.. unless entity @a[distance=..6,limit=1,scores={maxHP=1..}] run function wancomatter:boss/sils/axe/move
execute if score @s counter matches 1000.. unless score #difficult counter matches 3..4 if entity @a[distance=..5.5,limit=1,scores={maxHP=1..}] run scoreboard players set @s counter 928
execute if score @s counter matches 1000.. if score #difficult counter matches 3 if entity @a[distance=..7,limit=1,scores={maxHP=1..}] run scoreboard players set @s counter 928
execute if score @s counter matches 1000.. if score #difficult counter matches 4 if entity @a[distance=..16,limit=1,scores={maxHP=1..}] run scoreboard players set @s counter 928
execute if score @s counter matches 1000 run scoreboard players set @s counter 928

execute if score @s counter matches 928 run function wancomatter:boss/sils/axe/1-0
execute if score @s counter matches 927 run function wancomatter:boss/sils/axe/1
execute if score @s counter matches 911 run function wancomatter:boss/sils/axe/2
execute if score @s counter matches 910 if score #difficult counter matches 3 run scoreboard players set @s counter 902
execute if score @s counter matches 910 if score #difficult counter matches 4 run scoreboard players set @s counter 896
execute if score @s counter matches 895 run function wancomatter:boss/sils/axe/rand

execute if score @s counter matches 836 run function wancomatter:boss/sils/axe/3-0
execute if score @s counter matches 835 run function wancomatter:boss/sils/axe/3
execute if score @s counter matches 824 run function wancomatter:boss/sils/axe/4
execute if score @s counter matches 781..824 run function wancomatter:boss/sils/axe/5
execute if score @s counter matches 806 unless score #difficult counter matches 2..4 run scoreboard players set @s counter 16
execute if score @s counter matches 800 if score #difficult counter matches 2 run scoreboard players set @s counter 10
execute if score @s counter matches 791 if score #difficult counter matches 3 run scoreboard players set @s counter 4
execute if score @s counter matches 781 run scoreboard players set @s counter 0

execute if score @s counter matches 700 run function wancomatter:boss/sils/axe/6
execute if score @s counter matches 687 run function wancomatter:boss/sils/axe/7-0
execute if score @s counter matches 686 run function wancomatter:boss/sils/axe/8
execute if score @s counter matches 685 unless score #difficult counter matches 3..4 run scoreboard players set @s counter 15
execute if score @s counter matches 685 run function wancomatter:boss/sils/axe/9
execute if score @s counter matches 672 run function wancomatter:boss/sils/axe/7-0
execute if score @s counter matches 671 run function wancomatter:boss/sils/axe/7
execute if score @s counter matches 670 if score #difficult counter matches 3 run scoreboard players set @s counter 15
execute if score @s counter matches 670 run function wancomatter:boss/sils/axe/9
execute if score @s counter matches 659 run function wancomatter:boss/sils/axe/7-0
execute if score @s counter matches 658 run function wancomatter:boss/sils/axe/10
execute if score @s counter matches 658 run scoreboard players set @s counter 0