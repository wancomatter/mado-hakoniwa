scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 180
scoreboard players set @s CooldownX_max 180

summon marker ~ ~ ~ {Tags:["steal-power","discharge"]}
scoreboard players set @e[tag=discharge,limit=1] counter 2
tp @e[tag=discharge] ~ ~1 ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge