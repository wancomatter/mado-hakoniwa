bossbar remove minecraft:sils
playsound minecraft:entity.wither.death master @a ~ ~ ~ 4 2
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 0.7 2
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 force @a
particle minecraft:poof ~ ~1 ~ 0 0 0 1 1000 force @a

kill @e[tag=sils_slash1]
kill @e[tag=sils_slash2]
kill @e[tag=sils_slash3]
kill @e[tag=sils_axe1]
kill @e[tag=sils_axe2]
kill @e[tag=sils_axe3]
kill @e[tag=sils_netherite]
kill @e[tag=sils_gate]
kill @e[tag=sils_babylone]
kill @e[tag=sils_head]

execute as @e[tag=sils_slime] run data merge entity @s {Health:0f,DeathTime:19s,Size:0}
kill @e[tag=sils_feather]
kill @e[tag=sils_hitbox]
kill @e[tag=sils]
