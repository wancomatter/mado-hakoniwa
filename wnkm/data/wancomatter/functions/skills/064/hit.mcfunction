#ダメージ処理
execute if block ~ ~-0.3 ~ #wancomatter:air if block ~ ~-1.3 ~ #wancomatter:air if block ~ ~-2.3 ~ #wancomatter:air run tag @s add hit2

data merge storage wnkm:storage_damage {Damage:3.0f,WeaponNumber:64,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @a[tag=user,limit=1] playerNumber
execute if entity @s[tag=hit2] run data modify storage wnkm:storage_damage Damage set value 10.0f
execute if entity @s[tag=hit2] run data modify storage wnkm:storage_damage DamageType set value 2b
execute if entity @s[tag=hit2] run tp @s @s
function wancomatter:general/damagetaken/storage_damage

#hit音
execute as @a[tag=user] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ -20 ~ 0 0.5 0.7
execute if entity @s[tag=hit2] as @a[tag=user] at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~-20 ~ 0 1 0.6
#後処理
execute if entity @s[tag=hit2] run tag @s remove hit2
tag @s remove hit
scoreboard players set @e[tag=064dummy] counter 20