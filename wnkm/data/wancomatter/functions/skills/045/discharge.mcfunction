scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240

particle minecraft:explosion ~ ~1 ~ 1.5 1 1.5 1 12 normal @a
particle minecraft:explosion ~ ~1 ~ 1.5 1 1.5 1 3 force @a
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.5

execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["firecircle_elem","this"]}
execute as @e[tag=this,limit=1,sort=nearest] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this
