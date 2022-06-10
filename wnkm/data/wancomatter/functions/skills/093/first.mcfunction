scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240

playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.5 2
summon minecraft:marker ~ ~12 ~ {Tags:["first","guard_star"]}
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first

particle lava ~ ~7 ~ 0.2 7 0.2 1 50 force @a
