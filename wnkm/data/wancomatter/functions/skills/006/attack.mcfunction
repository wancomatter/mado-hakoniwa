execute as @e[distance=..2.2,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=now-heathaze,limit=1] teamNumber at @s run tag @s add heathaze-hit
execute if entity @e[tag=heathaze-hit,limit=1] run function wancomatter:skills/006/hit-entity
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 2 force @a
particle flame ~ ~1 ~ 0.4 0.6 0.4 0.01 120 normal @a
particle flame ~ ~1 ~ 0.4 0.6 0.4 0.01 30 force @a
particle flame ~ ~0.1 ~ 1.4 0.1 1.4 0.01 120 normal @a
particle flame ~ ~0.1 ~ 1.4 0.1 1.4 0.01 30 force @a
