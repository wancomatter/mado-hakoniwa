execute if score @s counter_1 matches ..0 run execute positioned ^ ^1 ^20.8 as @e[type=skeleton_horse,tag=117horse2,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tag @s add 117ready
execute positioned ^ ^1 ^20.8 as @e[type=skeleton_horse,tag=117horse2,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tp @s ~ ~ ~ ~90 0

execute positioned ^ ^1 ^20.8 facing entity @s feet run particle minecraft:dragon_breath ~ ~1 ~ ^300000 ^ ^1000000 0.00000108 0 force @a

