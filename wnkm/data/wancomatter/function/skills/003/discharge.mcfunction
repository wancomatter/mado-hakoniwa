scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 120
scoreboard players set @s CooldownX_max 120
execute anchored eyes positioned ^ ^ ^ run summon minecraft:armor_stand ~ ~-0.74 ~ {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Pose:{Head:[0.001f,0.0f,0.0f]},Small:1b,Tags:["discharge","icicle","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:3},"minecraft:item_model":"wnkm:appearance/golden_hoe/3"},count:1,id:"minecraft:golden_hoe"}}}

execute anchored eyes positioned ^ ^ ^0.1 rotated as @s run tp @e[tag=discharge,limit=1] ~ ~-0.74 ~
data modify entity @e[tag=discharge,limit=1] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=discharge,limit=1] Pose.Head[0] set from entity @s Rotation[1]
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber


tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy
