

scoreboard players operation #- playerNumber = @s playerNumber
execute if entity @e[tag=027spirit,limit=1] as @e[tag=027spirit] if score @s playerNumber = #- playerNumber run kill @s
scoreboard players reset #-
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 2 1
particle minecraft:falling_dust red_wool ~ ~1 ~ 1 1 1 1 120 force @a
summon vex ~ ~1 ~ {CustomName:'"フェアリー"',Tags:["mob","mobInit","summon_entity","027spirit","027Init"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b,tag:{ownerUUID:[]}}],ArmorDropChances:[-1f,-1f,-1f,-1f],HandDropChances:[-1f,-1f],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:100}

scoreboard players operation @e[tag=027Init,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=027Init,limit=1] teamNumber = @s teamNumber
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=027Init,limit=1] if score @s teamNumber matches 17 run team join noPush @s
execute if score @s teamNumber matches 1 as @e[tag=027Init] run data merge entity @s {Color:14b}
execute if score @s teamNumber matches 2 as @e[tag=027Init] run data merge entity @s {Color:3b}
execute if score @s teamNumber matches 3 as @e[tag=027Init] run data merge entity @s {Color:4b}
execute if score @s teamNumber matches 4 as @e[tag=027Init] run data merge entity @s {Color:5b}
execute if score @s teamNumber matches 5 as @e[tag=027Init] run data merge entity @s {Color:10b}
execute if score @s teamNumber matches 6 as @e[tag=027Init] run data merge entity @s {Color:0b}
execute if score @s teamNumber matches 7 as @e[tag=027Init] run data merge entity @s {Color:15b}
execute if score @s teamNumber matches 8 as @e[tag=027Init] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 9 as @e[tag=027Init] run data merge entity @s {Color:6b}
execute if score @s teamNumber matches 10 as @e[tag=027Init] run data merge entity @s {Color:1b}
execute if score @s teamNumber matches 11 as @e[tag=027Init] run data merge entity @s {Color:8b}
execute if score @s teamNumber matches 12 as @e[tag=027Init] run data merge entity @s {Color:2b}
execute if score @s teamNumber matches 13 as @e[tag=027Init] run data merge entity @s {Color:9b}
execute if score @s teamNumber matches 14 as @e[tag=027Init] run data merge entity @s {Color:13b}
execute if score @s teamNumber matches 15 as @e[tag=027Init] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 16 as @e[tag=027Init] run data merge entity @s {Color:7b}

#execute as @e[tag=027Init] store result score @s subcounter run data get entity @s UUID[1] 1
#data modify entity @e[tag=027Init,limit=1] ArmorItems[{id:"minecraft:magma_block"}].tag.ownerUUID set from entity @s UUID
scoreboard players set @e[tag=027Init] counter 32767
scoreboard players set @e[tag=027Init] Cooldown4 32767
loot replace entity @e[tag=027Init] weapon.mainhand loot wancomatter:items/magic_attack/fireball
tag @e[tag=027Init] remove 027Init
