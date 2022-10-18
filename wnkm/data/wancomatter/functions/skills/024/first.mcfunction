scoreboard players remove @s Mana 2
scoreboard players set @s CooldownX 10
scoreboard players set @s CooldownX_max 10

execute at @s anchored eyes positioned ^ ^ ^0.1 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.3

execute at @s anchored eyes positioned ^ ^ ^0.1 run summon marker ~ ~ ~ {Tags:["080whiteball","first"]}
execute at @s anchored eyes positioned ^ ^ ^0.1 run tp @e[tag=first,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber

tag @e[tag=first] remove first
