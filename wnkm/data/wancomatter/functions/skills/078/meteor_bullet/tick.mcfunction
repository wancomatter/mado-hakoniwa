scoreboard players add @s counter 1

execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,scores={maxHP=1..},nbt={HurtTime:0s}] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/078/meteor_bullet/hit

execute if data entity @s {OnGround:1b} run scoreboard players add @s subcounter 1
execute if score @s subcounter matches 4.. run function wancomatter:skills/078/meteor_bullet/onground
execute if score @s counter matches 210.. run kill @s
