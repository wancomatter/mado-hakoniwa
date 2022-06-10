scoreboard players add @s counter 1
tp @s ^ ^ ^1
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.3 5 normal @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.3 1 force @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 1 force @a

execute if score @s counter matches 9.. run function wancomatter:boss/dusk/skill6/splash
execute if score @s counter >= @s subcounter run kill @s