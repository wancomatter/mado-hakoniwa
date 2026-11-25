scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

#particle minecraft:poof ~ ~ ~ 1 0 1 1 80 normal @a
#particle minecraft:poof ~ ~ ~ 1 0 1 1 20 normal @a
#particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 120 normal @a
#particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 30 force @a
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1.2 1.2

execute rotated ~ 0 run summon minecraft:creeper ^ ^0.75 ^1 {AbsorptionAmount:240.0f,ExplosionRadius:3b,Fuse:600s,Health:1000.0f,Tags:["mob","mobInit","discharge","summon_bomb","summon_entity","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.0d,id:"minecraft:movement_speed"},{base:0.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},ignited:1b}
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
