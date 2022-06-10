data merge entity @s {NoAI:0b}
execute positioned 0.0 0.9 0.0 rotated ~ 0 run summon area_effect_cloud ^ ^ ^2.5 {Tags:["vector"],Duration:1}
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a

tag @s add jumphorse_jumped
tag @s remove jumphorse_ready
