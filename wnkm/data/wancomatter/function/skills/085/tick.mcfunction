scoreboard players add @s counter 1
particle dust{color:[0,0.66,0],scale:2} ~ ~ ~ 0 0 0 0.1 1 force @a
execute if score @s counter matches 60.. run kill @s
