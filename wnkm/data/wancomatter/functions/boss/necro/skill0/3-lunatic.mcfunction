scoreboard players add @s counter 1
tp @s ^ ^ ^1.2
execute positioned ^ ^ ^1.2 run particle minecraft:witch ~ ~1.5 ~ 0.2 0.2 0.2 1 4 normal @a
execute positioned ^ ^ ^-2.4 positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @a[tag=hit,limit=1] run scoreboard players set @s counter 100
execute if entity @a[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill0/hit
execute if score @s counter matches 51.. run kill @s
