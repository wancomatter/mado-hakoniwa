scoreboard players add @s counter 1

execute if score @s counter matches ..9 run effect give @s luck 1 7 true
execute if score @s counter matches 30 run function wancomatter:skills/028/open
execute if score @s counter matches 45 run function wancomatter:skills/028/shot_check
execute if score @s counter matches 55 run effect give @s luck 1 7 true
execute if score @s counter matches 55.. run function wancomatter:skills/028/close
