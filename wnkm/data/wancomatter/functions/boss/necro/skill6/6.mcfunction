particle dragon_breath ~ ~-2 ~ 0 0 0 0.1 8 normal @a
particle dragon_breath ~ ~-2 ~ 0 0 0 0.1 2 force @a
particle end_rod ~ ~-2 ~ 0 0 0 0.1 1 force @a
particle block coal_block ~ ~-2 ~ 1 1 1 1 8 normal @a
particle block coal_block ~ ~-2 ~ 1 1 1 1 2 force @a

execute if data entity @s {OnGround:1b} run function wancomatter:boss/necro/skill6/7
