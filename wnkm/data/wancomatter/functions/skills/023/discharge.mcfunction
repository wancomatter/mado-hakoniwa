scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100
execute anchored eyes run summon minecraft:marker ^ ^ ^2 {Tags:["discharge","shine"]}

execute anchored eyes run tp @e[tag=discharge,limit=1] ^ ^ ^2 ~ 90
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber

tag @e[tag=discharge] remove discharge