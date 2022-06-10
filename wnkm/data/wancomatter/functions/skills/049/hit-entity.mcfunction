execute as @e[tag=hit,type=player] if entity @s[gamemode=spectator] run tag @s remove hit
scoreboard players set @e[tag=hit] hurtByTime 10
scoreboard players operation @e[tag=hit] hurtByNumber = #dummy playerNumber
#execute unless entity @s[tag=skelepon_grenade] run scoreboard players set @e[tag=hit] hurtWeaponNumber 49
#execute if entity @s[tag=skelepon_grenade] run scoreboard players set @e[tag=hit] hurtWeaponNumber 59
scoreboard players set @e[tag=hit] hurtWeaponNumber 49
tag @e[tag=hit] add reserveHurtBy
tag @e[tag=hit] remove hit