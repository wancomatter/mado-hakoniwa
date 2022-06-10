particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 4 normal @a
particle minecraft:item minecraft:snow_block ~ ~ ~ 0.5 0.5 0.5 0.5 60 normal @a
particle minecraft:item minecraft:snow_block ~ ~ ~ 0.5 0.5 0.5 0.5 15 force @a
playsound entity.generic.explode master @a ~ ~ ~ 0.8 2

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if entity @e[scores={maxHP=1..},distance=..1.5,limit=1] as @e[scores={maxHP=1..},distance=..1.5] unless score @s teamNumber = #dummy teamNumber run function wancomatter:skills/079/bullet/hit
scoreboard players reset #dummy
kill @s
