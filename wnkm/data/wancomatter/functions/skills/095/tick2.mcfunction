scoreboard players add @s counter 1

tp @s ~ ~-0.5 ~
execute store result score @s subcounter2 run data get entity @s Pos[1] 10
execute if score @s subcounter >= @s subcounter2 run scoreboard players set @s counter 100
execute if score @s counter matches 40.. run function wancomatter:skills/095/attack
