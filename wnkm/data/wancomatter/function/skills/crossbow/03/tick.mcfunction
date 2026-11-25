scoreboard players add @s counter 1
particle minecraft:enchanted_hit ~ ~0.2 ~ 0 0 0 0 1 force @a
#particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 4 normal @a
execute if data entity @s {inGround:1b} run scoreboard players set @s counter 241
execute if score @s counter matches 240.. run kill @s
