scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240

playsound minecraft:entity.blaze.ambient master @a ^ ^ ^5 1.0 0.80
playsound minecraft:entity.blaze.ambient master @a ^ ^ ^5 1.0 0.75
playsound minecraft:entity.blaze.ambient master @a ^ ^ ^5 1.0 0.70
playsound minecraft:entity.blaze.hurt master @a ^ ^ ^5 1.0 1.5
execute positioned 0.0 0.0 0.0 rotated ~ 0 run summon marker ^ ^0.5 ^2 {Tags:["fire_whip","this"]}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players set @e[tag=this] Cooldown1 24
#execute as @e[tag=this] run data modify entity @s data.kb set from entity @s Pos
tp @e[tag=this] ~ ~ ~ ~ 0

tag @e[tag=this] remove this
