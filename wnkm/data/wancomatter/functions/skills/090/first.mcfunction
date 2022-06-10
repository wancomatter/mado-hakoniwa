scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 110
scoreboard players set @s CooldownX_max 110

summon minecraft:marker ^ ^ ^ {Tags:["first","zipped_water"]}
tp @e[tag=first,limit=1] ~ ~1 ~ ~ ~
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
playsound minecraft:entity.puffer_fish.hurt master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1.5 1.2
