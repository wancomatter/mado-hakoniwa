scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300
summon minecraft:marker ~ ~ ~ {Tags:["discharge","shiden"]}

execute positioned ~ ~ ~ run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
