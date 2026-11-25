playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 1.2 1
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-drainplant
function wancomatter:skills/037/move
execute unless score @s counter matches 80.. at @s run function wancomatter:skills/037/move
tag @s remove now-drainplant
scoreboard players reset #dummy

execute if score @s counter matches 80.. run kill @s
