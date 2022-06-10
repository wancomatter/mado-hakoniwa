#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.6
#particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 force @a
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 1 20 force @a
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add creeperA_bomb
execute as @e[distance=..4.1,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber unless score @s playerNumber = #dummy playerNumber run function wancomatter:skills/arrow/06/instant_damage_shield
execute as @e[distance=..4.1,scores={maxHP=1..},tag=!explosion_instant_damage_shield] run tag @s add creeperA-hit
tag @e[tag=explosion_instant_damage_shield] remove explosion_instant_damage_shield
summon creeper ~ ~ ~ {CustomName:'"榴弾の矢"',ExplosionRadius:2b,Fuse:0s}
execute if entity @e[tag=creeperA-hit,limit=1] run function wancomatter:skills/arrow/06/hit-entity
tag @s remove creeperA_bomb

scoreboard players reset #dummy
kill @s

