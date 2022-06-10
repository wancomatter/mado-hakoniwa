data merge storage wnkm:storage_damage {Damage:5.5f,WeaponNumber:5,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=manaGun-hit] run function wancomatter:general/damagetaken/storage_damage
tag @s add it
execute as @a[tag=mana_gun_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
tag @s remove it
tag @e[tag=manaGun-hit] remove manaGun-hit
function wancomatter:skills/005/end