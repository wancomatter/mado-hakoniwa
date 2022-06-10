particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
particle minecraft:dust 0.66 0.9 1 2.5 ~ ~ ~ 0.3 0.3 0.3 1 15 normal @a
particle minecraft:block ice ~ ~ ~ 1 1 1 1 40 normal @a
particle minecraft:block ice ~ ~ ~ 1 1 1 1 10 force @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
execute positioned ~ ~-0.2 ~ run tag @a[distance=..1.8,scores={maxHP=1..}] add hit
execute positioned ~ ~1.2 ~ run tag @a[distance=..1.8,scores={maxHP=1..}] add hit
execute if entity @a[tag=hit,limit=1] run function wancomatter:boss/bear/papa/skill3/hit-entity
kill @s