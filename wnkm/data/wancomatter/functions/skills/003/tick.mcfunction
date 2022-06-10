scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 70.. run kill @s

particle minecraft:block packed_ice ~ ~0.88 ~ 0.4 0.4 0.4 1 4 normal @a
particle minecraft:block packed_ice ~ ~0.88 ~ 0 0 0 1 1 force @a
particle minecraft:item_snowball ~ ~0.88 ~ 0.5 0.5 0.5 1 4 normal @a
particle minecraft:item_snowball ~ ~0.88 ~ 0.5 0.5 0.5 1 1 force @a

execute if entity @s[tag=traped-icicle] positioned ~-1.1 ~-0.22 ~-1.1 as @e[dx=1.2,dy=1.2,dz=1.2,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit-icicle
execute if entity @s[tag=traped-icicle] positioned ^ ^ ^0.9 positioned ~-1.1 ~-0.22 ~-1.1 as @e[dx=1.2,dy=1.2,dz=1.2,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit-icicle
execute if entity @s[tag=traped-icicle] positioned ^ ^ ^1.8 positioned ~-1.1 ~-0.22 ~-1.1 as @e[dx=1.2,dy=1.2,dz=1.2,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit-icicle
execute if entity @s[tag=traped-icicle] run tp @s ^ ^ ^2.7

execute unless entity @s[tag=traped-icicle] run summon area_effect_cloud ~ ~ ~ {Tags:["vector"],Duration:1}
execute unless entity @s[tag=traped-icicle] run data modify entity @e[tag=vector,limit=1,sort=nearest] Rotation[0] set from entity @s Pose.Head[1]
execute unless entity @s[tag=traped-icicle] run data modify entity @e[tag=vector,limit=1,sort=nearest] Rotation[1] set from entity @s Pose.Head[0]
execute unless entity @s[tag=traped-icicle] positioned ~-0.85 ~0.03 ~-0.85 as @e[dx=0.7,dy=0.7,dz=0.7,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit-icicle
execute unless entity @s[tag=traped-icicle] rotated as @e[tag=vector,limit=1] positioned ^ ^ ^0.65 positioned ~-0.85 ~0.03 ~-0.85 as @e[dx=0.7,dy=0.7,dz=0.7,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit-icicle

execute if entity @e[tag=hit-icicle,limit=1] run function wancomatter:skills/003/hit-entity

execute unless entity @s[tag=traped-icicle] unless entity @s[tag=kill] rotated as @e[tag=vector,limit=1] unless block ^ ^ ^0.65 #wancomatter:air run function wancomatter:skills/003/hit-block
execute unless entity @s[tag=traped-icicle] unless entity @s[tag=kill] rotated as @e[tag=vector,limit=1] unless block ^ ^ ^1.3 #wancomatter:air run function wancomatter:skills/003/hit-block
execute unless entity @s[tag=traped-icicle] rotated as @e[tag=vector,limit=1] run tp @s ^ ^ ^1.3
execute unless entity @s[tag=traped-icicle] run kill @e[tag=vector]

execute unless score @s counter matches 4.. unless entity @s[tag=traped-icicle,tag=icicle] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 2
execute unless score @s counter matches 4.. unless entity @s[tag=traped-icicle,tag=icicle] run particle minecraft:item_snowball ~ ~0.88 ~ 0.5 0.5 0.5 1 8 normal @a
execute unless score @s counter matches 4.. unless entity @s[tag=traped-icicle,tag=icicle] run particle minecraft:item_snowball ~ ~0.88 ~ 0.5 0.5 0.5 1 2 force @a