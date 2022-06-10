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
scoreboard players remove #dummy Cooldown1 1800
execute if entity @e[tag=this,scores={counter=..30},limit=1] run scoreboard players operation #dummy Cooldown1 *= @e[tag=this,scores={counter=..30},limit=1] counter
execute if entity @e[tag=this,scores={counter=..30},limit=1] run scoreboard players operation #dummy Cooldown1 /= #20 counter 
execute unless score #dummy Cooldown1 matches ..-1 run scoreboard players set #dummy Cooldown1 0
execute if score #dummy Cooldown1 matches ..-1 run scoreboard players operation #dummy Cooldown1 *= #-1 counter
scoreboard players operation #dummy Cooldown1 /= #3 counter
scoreboard players operation #dummy Cooldown1 /= #3 counter
#execute unless score #dummy Cooldown1 <= @s hurtTimeTaken unless score #dummy Cooldown1 <= @s damageTaken run scoreboard players operation @s damageTaken = #dummy Cooldown1

data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:41,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get #dummy Cooldown1
function wancomatter:general/damagetaken/storage_damage

scoreboard players operation @s hurtByNumber = #dummy playerNumber
scoreboard players set @s hurtWeaponNumber 41
tag @s add pysicalDamage
tag @s remove hmissile-b-hit
