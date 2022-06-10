scoreboard players set #dummy subcounter 201
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
tp @s ~ ~ ~
execute as @e[distance=..4.0] unless score @s teamNumber = #dummy teamNumber run tag @s add b1s5razer-hit
execute if entity @e[tag=b1s5razer-hit,limit=1] run function wancomatter:boss/detonator/skill5/hit-razer