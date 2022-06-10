scoreboard players add @s counter 1
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.03 4 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.03 1 force @a
particle minecraft:flame ~ ~ ~ 1 1 1 0.15 8 normal @a
particle minecraft:flame ~ ~ ~ 1 1 1 0.15 2 force @a
particle minecraft:lava ~ ~ ~ 1 1 1 1 1 normal @a
execute unless block ^ ^ ^1 #wancomatter:air run function wancomatter:skills/045/active
execute unless score @s counter matches 81.. positioned ~-0.5 ~-0.5 ~-0.5 positioned ^ ^ ^1 if entity @e[tag=wall_entity,limit=1,dx=0] at @s run function wancomatter:skills/045/active
tp @s ^ ^ ^1
execute if score @s counter matches 80.. run kill @s