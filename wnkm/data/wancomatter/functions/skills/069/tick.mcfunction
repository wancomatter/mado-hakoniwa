scoreboard players add @s counter 1

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.5 1.1

tag @s add 097dummy
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
execute at @s run function wancomatter:skills/069/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
execute at @s run function wancomatter:skills/069/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
execute at @s run function wancomatter:skills/069/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
execute at @s run function wancomatter:skills/069/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
execute at @s run function wancomatter:skills/069/reflect
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
execute at @s run function wancomatter:skills/069/reflect
tag @s remove 097dummy

execute if score @s counter matches 35.. run kill @s