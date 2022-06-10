tp @s ~ ~0.05 ~ ~17.5 ~
particle minecraft:block dirt ~ ~1 ~ 0.5 0.5 0.5 0.5 5 normal @a
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.5
scoreboard players remove @s subcounter 1
execute if score @s subcounter matches 0 run data merge entity @s {Silent:0b,Invulnerable:0b,NoAI:0b}
