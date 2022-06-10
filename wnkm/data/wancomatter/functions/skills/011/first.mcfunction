scoreboard players remove @s Mana 30
scoreboard players set @s CooldownX 600
scoreboard players set @s CooldownX_max 600

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
particle cloud ~ ~ ~ 0.5 0.5 0.5 1 200 normal @a
particle cloud ~ ~ ~ 0.5 0.5 0.5 1 50 force @a

summon wolf ~ ~ ~ {Tags:["sirius_wolf","this"],NoAI:1b,Glowing:1b,Silent:1b,Team:"Aqua",Invulnerable:1b}
effect give @e[tag=this,limit=1] invisibility 1000000 127 true
tp @e[tag=this,limit=1] ~ ~0.6 ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
