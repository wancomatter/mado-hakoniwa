scoreboard players remove @s Mana 11
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200

summon marker ~ ~ ~ {Tags:["blaze-raze1","discharge"]}
execute if entity @s[x_rotation=..90] rotated ~ 0 anchored eyes run tp @e[tag=discharge,limit=1] ^ ^ ^3 ~ 0
execute unless entity @s[x_rotation=..90] anchored eyes run tp @e[tag=discharge,limit=1] ^ ^ ^3 ~ 0
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber

execute at @e[tag=discharge] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1.3 0.5
execute at @e[tag=discharge] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 1 24 normal @a
execute at @e[tag=discharge] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 1 6 force @a
tag @e[tag=discharge] remove discharge