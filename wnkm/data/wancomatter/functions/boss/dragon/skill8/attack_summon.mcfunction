summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["dragon_s8_bullet","dragon_entity","init"],ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}]}
tp @e[tag=init,limit=1] ~ ~ ~ ~ 0
scoreboard players operation @e[tag=init,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=init,limit=1] teamNumber = @s teamNumber
tag @e[tag=init] remove init
