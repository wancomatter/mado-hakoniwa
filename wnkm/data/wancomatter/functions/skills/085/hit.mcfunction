#data merge storage wnkm:storage_damage {Damage:4.0f,WeaponNumber:85,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
#execute if data entity @s ActiveEffects[{Id:19b}] run data modify storage wnkm:storage_damage Damage set value 8.0f
#execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @a[tag=hurtBy,limit=1] playerNumber
execute unless data entity @s ActiveEffects[{Id:19b}] run scoreboard players set @s damageTaken 40
execute if data entity @s ActiveEffects[{Id:19b}] run scoreboard players set @s damageTaken 80
tag @s add magicDamage
effect give @s minecraft:poison 6 0
#function wancomatter:general/damagetaken/storage_damage

#tag @s add magicDamage
#scoreboard players set @s damageTaken 40
#execute if data entity @s ActiveEffects[{Id:19b}] run scoreboard players set @s damageTaken 80
#scoreboard players set @s hurtWeaponNumber 85
advancement revoke @a[tag=hurtBy,advancements={wancomatter:general/poison_needle=true}] only wancomatter:general/any-dealt
