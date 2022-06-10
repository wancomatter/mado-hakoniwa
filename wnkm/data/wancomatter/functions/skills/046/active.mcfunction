playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.6
particle minecraft:flash ~ ~1.6 ~ 1.5 1.5 1.5 1 12 normal @a
particle minecraft:flash ~ ~1.6 ~ 1.5 1.5 1.5 1 3 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 50 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 200 normal @a
scoreboard players operation #dummy teamNumber = @s teamNumber
#敵自傷判定
execute positioned ~-3 ~ ~-3 as @e[dx=5.0,dy=8,dz=5.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ~-3 ~ ~-3 as @e[dx=5.0,dy=8,dz=5.0,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run effect give @s minecraft:luck 1 9
scoreboard players reset #dummy teamNumber
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/046/hit-entity
execute rotated 000 0 run summon minecraft:lightning_bolt ^ ^ ^0.5
execute rotated 120 0 run summon minecraft:lightning_bolt ^ ^ ^0.5
execute rotated 240 0 run summon minecraft:lightning_bolt ^ ^ ^0.5