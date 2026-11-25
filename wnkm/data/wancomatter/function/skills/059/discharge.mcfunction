scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 400
scoreboard players set @s CooldownX_max 400

scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=skelepon] if score @s ownerNumber = #dummy playerNumber run kill @s
execute anchored eyes run summon skeleton ^ ^ ^ {AbsorptionAmount:120,Health:1000.0f,Tags:["this","skelepon","mob","mobInit","skeleton_sound","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:{head:{components:{"minecraft:enchantments":{"minecraft:blast_protection":10,"minecraft:feather_falling":10}},count:1,id:"minecraft:leather_helmet"},mainhand:{components:{"minecraft:enchantments":{"minecraft:power":3,"minecraft:punch":1}},count:1,id:"minecraft:bow"},offhand:{count:1,id:"minecraft:spectral_arrow"}},CustomName:"スケルポン"}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {Duration:2,Tags:["vector","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
scoreboard players operation @e[tag=this] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players reset #dummy
execute as @e[tag=this] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=this] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=this] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=this] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=this] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=this] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=this] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=this] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=this] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=this] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=this] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=this] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=this] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=this] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=this] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=this] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=this] if score @s teamNumber matches 17 run team join noPush @s
execute as @e[tag=this] if score @s teamNumber matches 1 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16711680
execute as @e[tag=this] if score @s teamNumber matches 2 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 65535
execute as @e[tag=this] if score @s teamNumber matches 3 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16776960
execute as @e[tag=this] if score @s teamNumber matches 4 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 65280
execute as @e[tag=this] if score @s teamNumber matches 5 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 11141290
execute as @e[tag=this] if score @s teamNumber matches 6 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16777215
execute as @e[tag=this] if score @s teamNumber matches 7 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 0
execute as @e[tag=this] if score @s teamNumber matches 8 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 255
execute as @e[tag=this] if score @s teamNumber matches 9 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16711935
execute as @e[tag=this] if score @s teamNumber matches 10 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16755200
execute as @e[tag=this] if score @s teamNumber matches 11 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 11184810
execute as @e[tag=this] if score @s teamNumber matches 12 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 11141120
execute as @e[tag=this] if score @s teamNumber matches 13 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 43690
execute as @e[tag=this] if score @s teamNumber matches 14 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 43520
execute as @e[tag=this] if score @s teamNumber matches 15 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 170
execute as @e[tag=this] if score @s teamNumber matches 16 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 5592405
scoreboard players set @e[tag=this] counter 131
scoreboard players set @e[tag=this] Cooldown1 40
scoreboard players set @e[tag=this] Cooldown2 50
tag @e[tag=this] remove this

particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 1 1 1 1 8 normal @a
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 1 1 1 1 1 force @a
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:poof ~ ~ ~ 1 1 1 1 600 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 120 force @a
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.7 1.2
playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 0.8
