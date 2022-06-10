tag @s add now
function wancomatter:skills/088/move
execute unless score @s counter matches 80.. at @s run function wancomatter:skills/088/move
tag @s remove now

playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1.6

scoreboard players add @s counter 1
execute if score @s counter matches 45.. run kill @s