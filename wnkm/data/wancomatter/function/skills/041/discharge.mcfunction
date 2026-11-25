scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200
summon minecraft:armor_stand ~ ~1.6 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge","horming_missile","wnkm.owned","wnkm.round"]}

execute anchored eyes positioned ^ ^ ^ run tp @e[tag=discharge,limit=1] ~ ~-0.65 ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge

playsound minecraft:block.piston.contract master @a ~ ~ ~ 1.2 0.5
