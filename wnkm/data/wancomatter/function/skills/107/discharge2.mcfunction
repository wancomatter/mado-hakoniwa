scoreboard players remove @s Mana 11
scoreboard players set @s CooldownX 110
scoreboard players set @s CooldownX_max 110

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge","kusaNagi","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[tag=discharge] playerNumber = @s playerNumber
scoreboard players set @e[tag=discharge] counter 8

tag @e[tag=discharge] remove discharge
