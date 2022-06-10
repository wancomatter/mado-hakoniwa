scoreboard players remove @s Mana 9
scoreboard players set @s CooldownX 150
scoreboard players set @s CooldownX_max 150
summon minecraft:marker ~ ~0.2 ~ {Tags:["discharge","drainplant"]}

execute positioned ~ ~1 ~ run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=discharge] at @s run function wancomatter:skills/037/check
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
