data merge storage wnkm:storage_damage {Damage:4.0f,WeaponNumber:37,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
effect give @e[tag=drainplant-hit,limit=1,sort=nearest] minecraft:hero_of_the_village 1 181 true
effect give @e[tag=drainplant-hit,limit=1,sort=nearest] minecraft:slowness 1 3
execute as @e[tag=drainplant-hit,limit=1,sort=nearest] run function wancomatter:general/damagetaken/storage_damage

summon marker ~ ~ ~ {Tags:["this","drainplant_hit_stand"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @e[tag=drainplant-hit,limit=1,sort=nearest] playerNumber
scoreboard players operation @e[tag=this,limit=1] subcounter2 = @s playerNumber
tag @e[tag=this] remove this
tag @e[tag=drainplant-hit,limit=1,sort=nearest] add drainplant-hitting
tag @e[tag=drainplant-hit] remove drainplant-hit
particle minecraft:happy_villager ^1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^-1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^-1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^-1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^ ^ ^1.414 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^ ^ ^-1.414 0 1.5 0 1 100 normal @a
playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.2 2
scoreboard players set @s counter 100