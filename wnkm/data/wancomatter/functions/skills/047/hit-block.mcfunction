#ブロック端判定
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50

execute at @s run particle minecraft:item_snowball ~ ~0.2 ~ 2 0 2 1 88 normal @a
execute at @s run particle minecraft:item_snowball ~ ~0.2 ~ 2 0 2 1 22 force @a
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2


scoreboard players set @s dummy -2
execute at @s positioned ~ ~0.1 ~ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s dummy 2
execute at @s positioned ~0.1 ~ ~ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s dummy 1
execute at @s positioned ~-0.1 ~ ~ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s dummy -1
execute at @s positioned ~ ~ ~0.1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s dummy 3
execute at @s positioned ~ ~ ~-0.1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s dummy -3
execute at @s unless block ~ ~0.1 ~ #wancomatter:air run scoreboard players set @s dummy 2
execute at @s unless block ~0.1 ~ ~ #wancomatter:air run scoreboard players set @s dummy 1
execute at @s unless block ~-0.1 ~ ~ #wancomatter:air run scoreboard players set @s dummy -1
execute at @s unless block ~ ~ ~0.1 #wancomatter:air run scoreboard players set @s dummy 3
execute at @s unless block ~ ~ ~-0.1 #wancomatter:air run scoreboard players set @s dummy -3
execute at @s if entity @s[scores={dummy=2}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard+2","blizzardY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}]}
execute at @s if entity @s[scores={dummy=1}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard+1","blizzardXZ","blizzardX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=3}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard+3","blizzardXZ","blizzardZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=-2}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard-2","blizzardY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}]}
execute at @s if entity @s[scores={dummy=-1}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard-1","blizzardXZ","blizzardX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=-3}] run summon armor_stand ~ ~-1.4 ~ {Tags:["discharge2","blizzard","blizzard-3","blizzardXZ","blizzardZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:103}}],Pose:{Head:[90f,0f,0f]}}
scoreboard players operation @e[tag=discharge2,limit=1] dummy = @s dummy
scoreboard players operation @e[tag=discharge2,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge2,limit=1] teamNumber = @s teamNumber
scoreboard players set @e[tag=discharge2,limit=1] counter 1
tag @e[tag=discharge2] remove discharge2
#particle minecraft:witch ~ ~ ~ 1 1 1 1 200 normal @a
#particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @a
#playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 2


tag @s remove blizzard-stop
scoreboard players set #dummy counter 150