scoreboard players add @s counter 1
tp @s ^ ^ ^0.6
execute positioned ^ ^ ^0.6 run particle minecraft:witch ~ ~1.5 ~ 0.2 0.2 0.2 1 4 normal @a
execute positioned ^ ^ ^-1.2 positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @a[tag=hit,limit=1] run scoreboard players set @s counter 100
execute if entity @a[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill0/hit
execute if score @s counter matches 61.. run kill @s
