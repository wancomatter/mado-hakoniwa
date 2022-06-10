particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 2 normal @a
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 1 force @a
particle minecraft:falling_dust gray_wool ~ ~1 ~ 1 1 1 1 2 normal @a
particle minecraft:falling_dust gray_wool ~ ~1 ~ 1 1 1 1 1 force @a
execute if entity @e[tag=064,limit=1,sort=nearest,scores={counter=12}] run function wancomatter:skills/064/launch