scoreboard players add @s counter 1
particle minecraft:smoke ~ ~ ~ 2 2 2 1 10 normal @a
particle minecraft:smoke ~ ~ ~ 2 2 2 1 2 force @a
particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a
particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 1 force @a
execute if score @s counter matches 31 run function wancomatter:boss/detonator/skill5/razer1
execute if score @s counter matches 31..60 run function wancomatter:boss/detonator/skill5/thunder-particle
execute if score @s counter matches 61 as @e[tag=detonator] run scoreboard players set @s Cooldown1_max 40
execute if score @s counter matches 61 as @e[tag=detonator] run effect give @s minecraft:luck 1 9 true 
execute if score @s counter matches 61 run function wancomatter:boss/detonator/skill5/thunder
execute if score @s counter matches 62..70 run function wancomatter:boss/detonator/skill5/thunder-particle
execute if score @s counter matches 71 run function wancomatter:boss/detonator/skill5/thunder
execute if score @s counter matches 71.. run kill @s
execute if score @s counter matches 31.. run scoreboard players set @s subcounter 0