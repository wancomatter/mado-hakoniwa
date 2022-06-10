tag @s add now-icicle
data merge storage wnkm:storage_damage {Damage:8.0f,WeaponNumber:3,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute if entity @s[tag=traped-icicle] run data modify storage wnkm:storage_damage Damage set value 12.0f
execute as @e[tag=hit-icicle] run function wancomatter:general/damagetaken/storage_damage
execute unless entity @s[tag=traped-icicle] run effect give @e[tag=hit-icicle] minecraft:slowness 3 1
execute if entity @s[tag=traped-icicle] run effect give @e[tag=hit-icicle] minecraft:slowness 4 2
execute at @e[tag=hit-icicle] run playsound minecraft:item.trident.return master @a ~ ~ ~ 1.3 1.4
execute at @e[tag=hit-icicle] run playsound minecraft:item.trident.return master @a ~ ~ ~ 1.3 1.4
execute as @a if score @s playerNumber = @e[tag=now-icicle,limit=1] playerNumber at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1.3 1.4
tag @s remove now-icicle
tag @e[tag=hit-icicle] remove hit-icicle
tag @s add kill
kill @s