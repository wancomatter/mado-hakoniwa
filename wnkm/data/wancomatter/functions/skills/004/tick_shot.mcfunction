execute store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539
execute if data entity @s {OnGround:1b} run function wancomatter:skills/004/hit-block