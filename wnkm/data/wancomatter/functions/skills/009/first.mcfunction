scoreboard players remove @s Mana 250
scoreboard players set @s CooldownX 2400
scoreboard players set @s CooldownX_max 2400

effect give @s minecraft:levitation 1 14
effect give @s minecraft:levitation 3 0
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 300 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100 force @a

summon marker ~ ~ ~ {Tags:["betelgeuse","this"]}
scoreboard players set @e[tag=this,limit=1] counter 40
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @s add betelgeuse_user
tag @e[tag=this] remove this