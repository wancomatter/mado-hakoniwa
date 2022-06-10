playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.6
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 force @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 48 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 12 force @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add GreL_bomb
execute as @e[distance=..15,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..4] run tag @s add GreL-hit
execute as @e[distance=..15,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..4] run tag @s add GreL-hit
execute as @e[distance=..5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..3] run tag @s add GreL-hit
execute as @e[distance=..5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..3] run tag @s add GreL-hit
execute as @e[distance=..5,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..3] run tag @s add GreL-hit-user
execute as @e[distance=..5,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=GreL_bomb,distance=..3] run tag @s add GreL-hit-user
execute if entity @a[tag=GreL-hit-user] run tag @a[tag=GreL-hit-user] add GreL-hit
execute if entity @e[tag=GreL-hit,limit=1] rotated as @s run function wancomatter:skills/034/hit-entity
tag @s remove GreL_bomb

scoreboard players reset #dummy
kill @s