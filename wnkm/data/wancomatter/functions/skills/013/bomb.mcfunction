# デバフを与える
effect give @e[tag=hit] minecraft:weakness 3 1
effect give @e[tag=hit] minecraft:hero_of_the_village 1 172

# ダメージを与える
data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:13,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage

# 使用者に攻撃力上昇を付与
execute as @a if score #dummy playerNumber = @s playerNumber run tag @s add user
effect give @e[tag=user] minecraft:strength 3 1

tag @a[tag=user] remove user
tag @e[tag=hit] remove hit
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.2 0.5
particle minecraft:witch ~ ~ ~ 0.9 0.9 0.9 1 100 normal @a
particle minecraft:witch ~ ~ ~ 0.9 0.9 0.9 1 25 force @a
scoreboard players set @s counter 100