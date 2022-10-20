scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 50
scoreboard players set @s CooldownX_max 50

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1

execute at @s anchored eyes positioned ^ ^ ^0.1 run summon marker ~ ~ ~ {Tags:["024stake","first"]}
execute at @s anchored eyes positioned ^ ^ ^0.1 run tp @e[tag=first,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber

tag @e[tag=first] remove first
