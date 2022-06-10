particle minecraft:witch ~ ~ ~ 0 4 0 0.02 8 normal @a
particle minecraft:witch ~ ~ ~ 0 4 0 0 2 force @a

scoreboard players add @s counter 1
scoreboard players add @s Cooldown1 1
scoreboard players set @s subcounter 0
execute if entity @s[tag=117_2o1] run function wancomatter:boss/necro/skill2/1_1
execute if entity @s[tag=117_2o2] run function wancomatter:boss/necro/skill2/1_2
execute if score @s Cooldown1 matches 450.. run kill @s
