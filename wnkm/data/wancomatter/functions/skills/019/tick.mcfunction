scoreboard players add @s counter 1

execute if score @s counter matches 13 run tag @s add it
execute if score @s counter matches 13 as @a if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add user
execute if score @s counter matches 13 run tag @s remove it
execute if score @s counter matches 13 as @a[tag=user] at @s run function wancomatter:skills/019/1
execute if score @s counter matches 13 run tag @a[tag=user] remove user
