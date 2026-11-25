particle block{block_state:"minecraft:blue_ice"} ~ ~0.1 ~ 0.4 0 0.4 1 4 normal @a
execute positioned ^ ^ ^0.6 run particle block{block_state:"minecraft:blue_ice"} ~ ~0.1 ~ 0.4 0 0.4 1 4 normal @a
particle dust{color:[0.4,0.9,1],scale:1} ~ ~0.1 ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^0.6 run particle dust{color:[0.4,0.9,1],scale:1} ~ ~0.1 ~ 0 0 0 0 1 force @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.2 1
scoreboard players add @s counter 1

execute positioned ~ ~-0.3 ~ run tag @a[distance=..1.5,scores={maxHP=1..}] add hit
execute if entity @a[tag=hit,limit=1] at @a[tag=hit,limit=1,sort=nearest] run function wancomatter:boss/bear/papa/skill4/hit-entity

tp @s ^ ^ ^1.2

execute if score @s counter matches 40.. run kill @s
