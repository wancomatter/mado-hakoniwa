particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 200 force @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 400 normal @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 0.8
kill @e[tag=b3s22block,limit=1,sort=nearest,distance=..1]
kill @s