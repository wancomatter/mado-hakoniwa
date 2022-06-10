scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200

summon armor_stand ~ ~0.8 ~ {Tags:["poison-web","discharge"],Invisible:1b,Marker:1b,Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name:"minecraft:obsidian"},Time:1,Tags:["poison-web"]}]}
tp @e[tag=discharge,limit=1] ~ ~0.8 ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber

playsound minecraft:entity.spider.death master @a ~ ~ ~ 1.3 1
tag @e[tag=discharge] remove discharge