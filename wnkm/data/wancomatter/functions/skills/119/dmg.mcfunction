data merge storage score_damage: {Damage:8.00f,EPF:0,BypassArmor:0b,BypassResistance:0b,DisableParticle:0b,KnockbackDamage:1b,MultiDamage:0b,byUUID:[]}
execute as @a if score @s playerNumber = #work playerNumber run data modify storage score_damage: byUUID set from entity @s UUID
function pve:damage
tag @s remove hit
scoreboard players reset #work