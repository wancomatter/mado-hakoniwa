tp @s ~ ~0.05 ~ ~18 ~
particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 0.5 4 normal @a
execute if entity @s[tag=necro_s4sound,scores={counter=..40}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.5
scoreboard players remove @s counter 1
execute if score @s counter matches 0 run data merge entity @s {Silent:0b,Invulnerable:0b,NoAI:0b}
