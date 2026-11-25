execute store result score #dummy Cooldown1 run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @s Pos[1] 10
execute store result score #dummy Cooldown3 run data get entity @s Pos[2] 10
scoreboard players operation #dummy Cooldown1 -= #dummy Cooldown1_max
scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown2_max
scoreboard players operation #dummy Cooldown3 -= #dummy Cooldown3_max
scoreboard players operation #dummy Cooldown1 *= #dummy Cooldown1
scoreboard players operation #dummy Cooldown2 *= #dummy Cooldown2
scoreboard players operation #dummy Cooldown3 *= #dummy Cooldown3
scoreboard players operation #dummy Cooldown1 += #dummy Cooldown2
scoreboard players operation #dummy Cooldown1 += #dummy Cooldown3
scoreboard players remove #dummy Cooldown1 1000
execute unless score #dummy Cooldown1 matches ..-1 run scoreboard players set #dummy Cooldown1 0
execute if score #dummy Cooldown1 matches ..-1 run scoreboard players operation #dummy Cooldown1 *= #-1 counter
scoreboard players operation #dummy Cooldown1 /= #3 counter
scoreboard players operation #dummy Cooldown1 /= #4 counter

data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:8,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=now-fireball,limit=1] playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get #dummy Cooldown1
function wancomatter:general/damagetaken/storage_damage

tag @s remove fireball-b-hit
