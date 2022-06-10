execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=5,dz=0,limit=1,scores={maxHP=1..},tag=!hit] as @e[dx=0,dy=5,dz=0,scores={maxHP=1..},tag=!hit] run tag @s add hit
execute positioned ^ ^ ^0.75 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=5,dz=0,limit=1,scores={maxHP=1..},tag=!hit] as @e[dx=0,dy=5,dz=0,scores={maxHP=1..},tag=!hit] run tag @s add hit

particle flash ~ ~0.5 ~ 0 0 0 1 1 force @a
particle minecraft:witch ^0.3 ^1.9 ^0.001 0 1.6 0 0 3 force @a
particle minecraft:witch ^0.3 ^1.9 ^0.501 0 1.6 0 0 3 normal @a
particle minecraft:witch ^0.3 ^1.9 ^1.001 0 1.6 0 0 3 normal @a
particle minecraft:witch ^-0.3 ^1.9 ^0.001 0 1.6 0 0 3 force @a
particle minecraft:witch ^-0.3 ^1.9 ^0.501 0 1.6 0 0 3 normal @a
particle minecraft:witch ^0.3 ^1.9 ^1.001 0 1.6 0 0 3 normal @a
execute positioned ^ ^ ^1.5 unless block ~ 5 ~ #wancomatter:air run function wancomatter:boss/necro/skill14/4_line
