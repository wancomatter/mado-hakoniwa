scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

particle minecraft:witch ~ ~ ~ 3 0 3 0 120 normal @a
particle minecraft:witch ~ ~ ~ 3 0 3 0 30 force @a
playsound minecraft:block.shulker_box.open master @a ~ ~ ~ 1.2 1
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.2 0.5

scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=summon_shulker] if score @s ownerNumber = #dummy playerNumber run tag @s add shulker_count
execute if entity @e[tag=shulker_count,limit=1] as @e[tag=shulker_count,limit=1,sort=nearest] run function wancomatter:skills/028/shulker_count
scoreboard players reset #dummy

tag @s add p.summon_shulker
summon minecraft:shulker ~ ~ ~ {AbsorptionAmount:110,ActiveEffects:[{Amplifier:7b,Duration:30,Id:26,ShowParticles:0b}],Health:1000.0f,NoAI:1b,Tags:["mob","mobInit","this","summon_shulker","summon_entity","wall_entity","shulker_sound","wnkm.owned","wnkm.round"],active_effects:[{amplifier:7b,duration:30,id:"minecraft:luck",show_particles:0b}],attributes:[{base:1000.0d,id:"minecraft:max_health"}],drop_chances:{mainhand:-100.0f,offhand:-100.0f},equipment:{mainhand:{count:1,id:"minecraft:stone"}}}
data modify entity @e[tag=this,limit=1] equipment.mainhand.components."minecraft:custom_data".Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 17 run team join noPush @s
execute if score @s teamNumber matches 1 as @e[tag=this] run data merge entity @s {Color:14b}
execute if score @s teamNumber matches 2 as @e[tag=this] run data merge entity @s {Color:3b}
execute if score @s teamNumber matches 3 as @e[tag=this] run data merge entity @s {Color:4b}
execute if score @s teamNumber matches 4 as @e[tag=this] run data merge entity @s {Color:5b}
execute if score @s teamNumber matches 5 as @e[tag=this] run data merge entity @s {Color:10b}
execute if score @s teamNumber matches 6 as @e[tag=this] run data merge entity @s {Color:0b}
execute if score @s teamNumber matches 7 as @e[tag=this] run data merge entity @s {Color:15b}
execute if score @s teamNumber matches 8 as @e[tag=this] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 9 as @e[tag=this] run data merge entity @s {Color:6b}
execute if score @s teamNumber matches 10 as @e[tag=this] run data merge entity @s {Color:1b}
execute if score @s teamNumber matches 11 as @e[tag=this] run data merge entity @s {Color:8b}
execute if score @s teamNumber matches 12 as @e[tag=this] run data merge entity @s {Color:2b}
execute if score @s teamNumber matches 13 as @e[tag=this] run data merge entity @s {Color:9b}
execute if score @s teamNumber matches 14 as @e[tag=this] run data merge entity @s {Color:13b}
execute if score @s teamNumber matches 15 as @e[tag=this] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 16 as @e[tag=this] run data merge entity @s {Color:7b}
tag @e[tag=this] remove this
