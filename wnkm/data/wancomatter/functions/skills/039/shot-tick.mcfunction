particle minecraft:firework ^ ^ ^0.0 0 0 0 0 1 force @a
particle minecraft:firework ^ ^ ^0.5 0 0 0 0 1 normal @a
particle minecraft:firework ^ ^ ^1.0 0 0 0 0 1 force @a
particle minecraft:firework ^ ^ ^1.5 0 0 0 0 1 normal @a
particle minecraft:lava ^ ^ ^0.00 0 0 0 1 1 normal @a
particle minecraft:lava ^ ^ ^0.66 0 0 0 1 1 force @a
particle minecraft:lava ^ ^ ^1.33 0 0 0 1 1 normal @a
particle minecraft:end_rod ^ ^ ^0 0.5 0.5 0.5 0.2 7 force @a
particle minecraft:end_rod ^ ^ ^1 0.5 0.5 0.5 0.2 7 normal @a
execute unless block ^ ^ ^0.0 #wancomatter:air run scoreboard players set @s counter 100
execute unless block ^ ^ ^0.5 #wancomatter:air run scoreboard players set @s counter 100
execute unless block ^ ^ ^1.0 #wancomatter:air run scoreboard players set @s counter 100
execute unless block ^ ^ ^1.5 #wancomatter:air run scoreboard players set @s counter 100
execute unless score @s counter matches 100.. positioned ^ ^ ^0.0 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 100
execute unless score @s counter matches 100.. positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 100
execute unless score @s counter matches 100.. positioned ^ ^ ^1.0 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 100
execute unless score @s counter matches 100.. positioned ^ ^ ^1.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 100
#playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1.3 2
tag @s add this
tp @s ^ ^ ^1.0
execute at @s as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add shiden-hit
execute at @s as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add shiden-hit
tp @s ^ ^ ^2.0
execute at @s as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add shiden-hit
execute at @s as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.3] run tag @s add shiden-hit
execute if entity @e[tag=shiden-hit,limit=1] run function wancomatter:skills/039/hit-entity
tag @s remove this


execute if score @s counter matches 100.. run function wancomatter:skills/039/hit-block