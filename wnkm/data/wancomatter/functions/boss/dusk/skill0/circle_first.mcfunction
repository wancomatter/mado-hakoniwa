scoreboard players set @s subcounter 0
scoreboard players add @s subcounter2 100
function wancomatter:boss/dusk/skill0/circle
scoreboard players operation @e[tag=b3s0dummy] dummy = @s subcounter2
execute as @e[tag=b3s0dummy] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=b3s0dummy] at @s run function wancomatter:operation/0.01tp
execute at @e[tag=b3s0dummy] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
kill @e[tag=b3s0dummy]