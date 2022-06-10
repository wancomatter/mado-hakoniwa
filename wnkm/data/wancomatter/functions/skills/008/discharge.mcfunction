scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 60
scoreboard players set @s CooldownX_max 60
summon minecraft:marker ~ ~1.6 ~ {Tags:["discharge","fireball"]}

execute positioned ~ ~1.6 ~ run tp @e[tag=discharge,limit=1] ^ ^ ^1 ~ ~
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.7
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.7
tag @s add fireball_addable
summon marker ~ ~ ~ {Tags:["discharge","fireball_p_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge