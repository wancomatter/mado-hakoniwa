#威力=(counter(経過tick,最大値75)+5)*7
execute if score @s counter matches 76.. run scoreboard players set @s counter 75
scoreboard players operation #dummy damageTaken = @s counter
scoreboard players add #dummy damageTaken 5
scoreboard players operation #dummy damageTaken *= #7 counter
#ダメージを与える
data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:45,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get #dummy damageTaken
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] at @s run function wancomatter:general/damagetaken/storage_damage

tag @e[tag=hit] remove hit
