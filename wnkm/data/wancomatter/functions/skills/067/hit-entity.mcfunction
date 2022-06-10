data merge storage wnkm:storage_damage {Damage:8.5f,WeaponNumber:67,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

tag @s add it
execute as @a[tag=musket_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
tag @s remove it
function wancomatter:skills/067/end