scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

#particle minecraft:poof ~ ~ ~ 1 0 1 1 80 normal @a
#particle minecraft:poof ~ ~ ~ 1 0 1 1 20 normal @a
#particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 120 normal @a
#particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 30 force @a
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1.2 1.2

execute rotated ~ 0 run summon minecraft:creeper ^ ^0.75 ^1 {Tags:["mob","mobInit","discharge","summon_bomb","summon_entity"],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],ExplosionRadius:3b,Fuse:600s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.0d},{Base:0.0d,Name:"generic.follow_range"}],AbsorptionAmount:240f}
scoreboard players operation @e[tag=discharge,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 17 run team join noPush @s
tag @e[tag=discharge] remove discharge