scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

#playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 3 2
summon minecraft:armor_stand ~ ~ ~ {Tags:["first","spica"],Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[0f,-2f]}
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
