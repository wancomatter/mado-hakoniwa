scoreboard players add @s damageBoost 100
execute at @e[tag=hurt,limit=1] run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 0.8 0.5
execute at @e[tag=hurt,limit=1] run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.8 0.5
execute at @e[tag=hurt,limit=1] run particle dust{color:[0.75,0,0],scale:1} ~ ~ ~ 1 1 1 1 100 normal @a
execute at @e[tag=hurt,limit=1] run particle dust{color:[0.75,0,0],scale:1} ~ ~ ~ 1 1 1 1 25 force @a
