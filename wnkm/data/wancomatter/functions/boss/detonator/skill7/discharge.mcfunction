scoreboard players set @s Cooldown7 410
execute if score @s HP matches 8001.. run tag @s add usedskill
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 500 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 200 force @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
effect clear @s minecraft:slowness
effect clear @s minecraft:wither
execute unless score #difficult counter matches 2..4 run effect give @s minecraft:speed 7 0 true
execute if score #difficult counter matches 2 run effect give @s minecraft:speed 7 1 true
execute if score #difficult counter matches 3 run effect give @s minecraft:speed 9 1 true
execute if score #difficult counter matches 4 run effect give @s minecraft:speed 9 2 true
execute unless score #difficult counter matches 4 run effect give @s minecraft:strength 7 0 true
execute if score #difficult counter matches 3 run effect give @s minecraft:strength 9 0 true
execute if score #difficult counter matches 4 run effect give @s minecraft:strength 9 1 true
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 4 1
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 4 1