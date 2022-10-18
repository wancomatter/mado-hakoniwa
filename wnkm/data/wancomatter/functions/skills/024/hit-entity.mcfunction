tag @e[tag=hit,limit=1,sort=nearest] add hit2
tag @e[tag=hit] remove hit

execute at @e[tag=hit2,limit=1] run function wancomatter:skills/080/set_dark

execute as @e[tag=hit2,limit=1] at @s run tp @s @s
effect give @e[tag=hit2,limit=1] slowness 1 0
data merge storage wnkm:storage_damage {Damage:4.0f,WeaponNumber:80,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit2,limit=1] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit2] remove hit2

function wancomatter:skills/080/end