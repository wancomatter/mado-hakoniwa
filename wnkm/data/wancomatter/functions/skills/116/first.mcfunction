scoreboard players set @s CT_darkRepulser 10
scoreboard players remove @s Mana 1

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 0.66

summon area_effect_cloud ~ ~ ~ {Tags:["first","darkRepulser_stand"],Duration:4}
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=first] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first,limit=1,sort=nearest] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1,sort=nearest] teamNumber = @s teamNumber
execute as @e[tag=first,limit=1,sort=nearest] at @s run function wancomatter:skills/116/tick
tag @e[tag=first] remove first
