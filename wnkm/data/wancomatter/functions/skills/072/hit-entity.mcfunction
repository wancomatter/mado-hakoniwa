data merge storage wnkm:storage_damage {Damage:3.11f,WeaponNumber:72,DamageType:0b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

tag @s add it
execute as @a[tag=072ar_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
tag @s remove it
function wancomatter:skills/072/end