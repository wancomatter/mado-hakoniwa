execute positioned 0.0 0.3 0.0 rotated ~ 0 run summon area_effect_cloud ^ ^ ^3.3 {Tags:["vector"],Duration:1}
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
