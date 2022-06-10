scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100
execute store result score @s s83slot run data get entity @s SelectedItemSlot

particle item snow_block ~ ~1 ~ 0.3 0.4 0.3 0.4 80 normal @a
particle item snow_block ~ ~1 ~ 0.3 0.4 0.3 0.4 20 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.3 1.3


scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @e[tag=summon_wolf,limit=1] as @e[tag=summon_wolf] if score @s playerNumber = #dummy playerNumber run tag @s add 083kill
execute if entity @e[tag=083kill,limit=1] run scoreboard players add @s CooldownX 300
execute if entity @e[tag=083kill,limit=1] run scoreboard players add @s CooldownX_max 300
execute if entity @e[tag=083kill,limit=1] run kill @e[tag=083kill]
scoreboard players reset #dummy playerNumber

tag @s add p.wolf
summon minecraft:wolf ~ ~1 ~ {Tags:["mobR","first","summon_wolf","summon_entity"],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Attributes:[{Name:"generic.movement_speed",Base:0.25d}]}
scoreboard players set @e[tag=first,limit=1] maxHP 200
scoreboard players set @e[tag=first,limit=1] HP 200
scoreboard players set @e[tag=first,limit=1] damageTaken 0
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
data modify entity @e[tag=first,limit=1] Owner set from entity @s UUID
execute as @e[tag=first,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=first,limit=1] if score @s teamNumber matches 17 run team join noPush @s
tag @e[tag=first] remove first