execute unless entity @a[distance=..7.5,scores={maxHP=1..},limit=1] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute unless entity @a[distance=..7.5,scores={maxHP=1..},limit=1] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 0.8
execute if entity @a[distance=..7.5,scores={maxHP=1..},limit=1] run summon minecraft:creeper ~ ~ ~ {CustomName:'"暁の霆"',powered:1b,ExplosionRadius:2b,Fuse:0s,Invulnerable:1b,Tags:["b1s22creeper"]}
execute positioned ~ 12.1 ~ unless block ^ ^ ^0.4 #wancomatter:air run kill @s
execute positioned ~ 12.1 ~ unless block ^ ^ ^0.8 #wancomatter:air run kill @s
execute positioned ~ 12.1 ~ unless block ^ ^ ^1.2 #wancomatter:air run kill @s
tp @s ^ ^ ^1.2
scoreboard players add @s counter 1
execute if score @s counter matches 80.. run kill @s