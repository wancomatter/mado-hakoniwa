#particle minecraft:block water ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
#particle minecraft:block water ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
particle minecraft:rain ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
particle minecraft:rain ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
execute unless block ~ ~-0.5 ~ minecraft:air run function wancomatter:boss/dragon/skill8/attack
execute if block ~ ~-0.5 ~ minecraft:air positioned ~ ~-0.5 ~ run function wancomatter:boss/dragon/skill8/rain