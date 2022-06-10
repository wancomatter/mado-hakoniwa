scoreboard players operation @s dummy = @s subcounter
function wancomatter:operation/0.01tp

execute as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:boss/necro/skill11/hit
particle block cactus ~ ~ ~ 1.5 1.5 1.5 0 32 normal @a
particle block cactus ~ ~ ~ 1.5 1.5 1.5 0 8 force @a

scoreboard players add @s counter 1
execute if score @s counter matches 40.. at @s run function wancomatter:boss/necro/skill11/end
