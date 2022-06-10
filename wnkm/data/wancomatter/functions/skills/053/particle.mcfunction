scoreboard players add #dummy dummy 1
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^-0.60 ^0.5 0.1 0.0 0.1 0 3 force @a
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^-0.45 ^1.5 0.1 0.1 0.1 0 3 force @a
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^-0.30 ^2.5 0.1 0.2 0.1 0 3 force @a
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^-0.15 ^3.5 0.1 0.3 0.1 0 3 force @a
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^ ^4.5 0.1 0.4 0.1 0 3 force @a
particle minecraft:dust 0.1 0.1 0.1 1.5 ^ ^ ^5.5 0.1 0.4 0.1 0 3 force @a
execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute positioned ^ ^ ^1.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute positioned ^ ^ ^2.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute positioned ^ ^ ^3.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute positioned ^ ^ ^4.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute positioned ^ ^ ^5.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit,dx=0,scores={maxHP=1..}] run tag @s add hit
execute unless score #dummy dummy matches 21.. rotated ~8 ~ run function wancomatter:skills/053/particle