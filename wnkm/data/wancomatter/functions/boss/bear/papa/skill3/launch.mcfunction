scoreboard players add @s subcounter 1
execute if score @s subcounter matches 1 run scoreboard players set @s counter 30
function wancomatter:boss/bear/papa/skill3/launch_loop
execute if score @s subcounter matches 20.. run function wancomatter:boss/bear/papa/skill3/launch_loop
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 4 0.5
particle minecraft:poof ~ ~ ~ 0 0 0 0.5 20 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 0.5 5 force @a
scoreboard players reset #dummy
execute if score @s subcounter matches 40.. run kill @s