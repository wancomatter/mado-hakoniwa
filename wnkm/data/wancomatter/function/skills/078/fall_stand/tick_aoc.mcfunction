particle dust{color:[1,0,0],scale:0.9} ~ ~2.6 ~ 0 2 0 1 3 normal @a
particle dust{color:[1,0,0],scale:0.9} ~ ~2.6 ~ 0 2 0 1 1 force @a

scoreboard players remove @s counter 1
execute unless score @s counter matches 1.. run kill @s
