scoreboard players add @s counter 1
execute if score @s counter matches 300.. run kill @s

particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 8 normal @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 2 force @a

#execute unless block ~ ~-0.1 ~ #wancomatter:air run scoreboard players set @s counter 20
execute if score @s counter matches 20.. run function wancomatter:skills/017/bomb
#tp @s ~ ~-0.1 ~