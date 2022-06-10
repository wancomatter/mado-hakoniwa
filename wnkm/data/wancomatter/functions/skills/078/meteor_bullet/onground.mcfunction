particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
playsound entity.generic.explode master @a ~ ~ ~ 1.5 0.5

execute positioned ~ ~ ~ as @e[distance=..2.85,scores={maxHP=1..}] run tag @s add hit
execute positioned ~ ~0.5 ~ as @e[distance=..2.85,scores={maxHP=1..}] run tag @s add hit
execute positioned ~ ~1.0 ~ as @e[distance=..2.85,scores={maxHP=1..}] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/078/meteor_bullet/hit

kill @e[tag=meteor_stand_aoc,limit=1,sort=nearest,distance=..1]
kill @s
