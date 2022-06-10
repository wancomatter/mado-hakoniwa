particle minecraft:dust 255 255 255 1 ~ ~ ~ 15 15 15 1 1200 normal @a
particle minecraft:dust 255 255 255 1 ~ ~ ~ 15 15 15 1 300 force @a
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..30,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run tag @s add bell-care
execute as @e[distance=..30,scores={maxHP=1..},tag=!bell-care] run effect give @s glowing 4 0
effect clear @e[tag=bell-care] minecraft:blindness
effect clear @e[tag=bell-care] minecraft:mining_fatigue
effect clear @e[tag=bell-care] minecraft:nausea
effect clear @e[tag=bell-care] minecraft:poison
effect clear @e[tag=bell-care] minecraft:slowness
effect clear @e[tag=bell-care] minecraft:weakness
effect clear @e[tag=bell-care] minecraft:wither
tag @e[tag=bell-care] remove bell-care
kill @s