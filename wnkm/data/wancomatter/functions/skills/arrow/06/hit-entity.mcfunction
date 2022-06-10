execute as @e[tag=creeperA-hit,type=player] if entity @s[gamemode=spectator] run tag @s remove creeperA-hit
scoreboard players add @e[tag=creeperA-hit] hurtByTime 10
scoreboard players operation @e[tag=creeperA-hit] hurtByNumber = @s playerNumber
scoreboard players set @e[tag=creeperA-hit] hurtWeaponNumber 141
#scoreboard players set @e[tag=creeperA-hit] instantDMGshield 5
#scoreboard players set @e[tag=creeperA-hit] instantDMGS_time 2
tag @e[tag=creeperA-hit] add reserveHurtBy
kill @e[tag=kill]
tag @e[tag=creeperA-hit] remove creeperA-hit
