scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

summon armor_stand ~ ~ ~ {Tags:["071shine","this"],NoGravity:1b,Marker:1b,Invisible:1b}
execute anchored eyes run tp @e[tag=this] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.2 0.5
