scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add throwedBy
scoreboard players operation #dummy teamNumber = @a[tag=throwedBy,limit=1] teamNumber
execute as @e[distance=..4,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber unless score @s playerNumber = #dummy playerNumber run function wancomatter:skills/arrow/06/instant_damage_shield
execute as @e[distance=..4,scores={maxHP=1..},tag=!explosion_instant_damage_shield] run tag @s add hit
tag @e[tag=explosion_instant_damage_shield] remove explosion_instant_damage_shield
summon creeper ~ ~ ~ {CustomName:'"手榴弾"',ExplosionRadius:2b,Fuse:0s}
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/049/hit-entity
tag @a[tag=throwedBy] remove throwedBy
scoreboard players reset #dummy
kill @s