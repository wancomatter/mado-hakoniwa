#ブロック端判定
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #wancomatter:air positioned ~-0.50 ~-0.50 ~-0.50 unless entity @e[tag=wall_entity,limit=1,dx=0] run tp @s ~0.50 ~0.50 ~0.50

execute at @s run particle minecraft:item ice ~ ~0.2 ~ 2 0 2 1 88 normal @a
execute at @s run particle minecraft:item ice ~ ~0.2 ~ 2 0 2 1 22 force @a
execute at @s run playsound minecraft:item.trident.thunder neutral @a ~ ~ ~ 2 0.7


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
execute at @s if entity @s[scores={dummy=2}] run summon armor_stand ~ ~ ~ {Tags:["this2","lightning","lightning+2","lightningY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:100}}]}
execute at @s if entity @s[scores={dummy=1}] run summon armor_stand ~ ~-1.4 ~ {Tags:["this2","lightning","lightning+1","lightningXZ","lightningX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:101}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=3}] run summon armor_stand ~ ~-1.4 ~ {Tags:["this2","lightning","lightning+3","lightningXZ","lightningZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:101}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=-2}] run summon armor_stand ~ ~ ~ {Tags:["this2","lightning","lightning-2","lightningY"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:100}}]}
execute at @s if entity @s[scores={dummy=-1}] run summon armor_stand ~ ~-1.4 ~ {Tags:["this2","lightning","lightning-1","lightningXZ","lightningX"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:101}}],Pose:{Head:[90f,0f,0f]}}
execute at @s if entity @s[scores={dummy=-3}] run summon armor_stand ~ ~-1.4 ~ {Tags:["this2","lightning","lightning-3","lightningXZ","lightningZ"],Invisible:1b,Fire:300s,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:101}}],Pose:{Head:[90f,0f,0f]}}
scoreboard players operation @e[tag=this2,limit=1] dummy = @s dummy
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this2,limit=1] teamNumber = @s teamNumber
tag @e[tag=this2] remove this2
#particle minecraft:witch ~ ~ ~ 1 1 1 1 200 normal @a
#particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @a
#playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 2


tag @s remove lightning-stop
scoreboard players set #dummy counter 150