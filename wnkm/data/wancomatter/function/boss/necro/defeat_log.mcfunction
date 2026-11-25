tag @s add killed-player
execute unless entity @s[scores={lastHurtByNumber=0..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[scores={lastHurtByNumber=0..}] as @a if score @e[tag=killed-player,limit=1,sort=nearest] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @a[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
tag @a[tag=got-kill] remove got-kill
tag @s remove killed-player

playsound minecraft:entity.wither.death master @a ~ ~ ~ 10 2
particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 1 4 normal @a
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 force @a
particle minecraft:explosion ~ ~1 ~ 1.5 1.5 1.5 1 28 normal @a
particle minecraft:explosion ~ ~1 ~ 1.5 1.5 1.5 1 7 force @a
