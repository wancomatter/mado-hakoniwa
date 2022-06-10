scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 120
scoreboard players set @s CooldownX_max 120
execute anchored eyes positioned ^ ^ ^ run summon minecraft:armor_stand ~ ~-0.74 ~ {Tags:["discharge","icicle"],NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:3}}],Pose:{Head:[0.001f,0f,0f]},DisabledSlots:4144959}

execute anchored eyes positioned ^ ^ ^0.1 rotated as @s run tp @e[tag=discharge,limit=1] ~ ~-0.74 ~
data modify entity @e[tag=discharge,limit=1] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=discharge,limit=1] Pose.Head[0] set from entity @s Rotation[1]
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber


tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy