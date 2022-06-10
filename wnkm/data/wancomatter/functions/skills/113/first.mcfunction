scoreboard players remove @s Mana 40
scoreboard players set @s CooldownX 1300
scoreboard players set @s CooldownX_max 1300

summon armor_stand ~ ~ ~ {Tags:["StarBurstStream_stand","stable","first"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players set @e[tag=first,limit=1] counter 32
tag @e[tag=first] remove first

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 4 1.2
particle minecraft:firework ~ ~1 ~ 0 0 0 1 1000 normal @a
particle minecraft:firework ~ ~1 ~ 0 0 0 1 250 force @a
tag @s remove UseStarBurstStream
tag @s add StarBurstStream_using