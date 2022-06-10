scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this","110suirou"],Duration:200}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID

execute positioned ~ ~ ~ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
