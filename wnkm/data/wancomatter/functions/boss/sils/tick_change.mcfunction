scoreboard players remove @s counter 1

execute if score @s counter matches -2 run function wancomatter:boss/sils/item_change/1
execute if score @s counter matches -11 run function wancomatter:boss/sils/item_change/2
execute if score @s counter matches ..-20 run function wancomatter:boss/sils/item_change/3

