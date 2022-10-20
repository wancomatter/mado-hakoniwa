tag @e[tag=hit,limit=1,sort=nearest] add hit2
tag @e[tag=hit] remove hit

particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:sweep_attack ~ ~ ~ 0.3 0.2 0.3 1 4 normal @a
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2

data merge storage wnkm:storage_damage {Damage:4.5f,WeaponNumber:24,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit2,limit=1] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit2] remove hit2

function wancomatter:skills/024/end