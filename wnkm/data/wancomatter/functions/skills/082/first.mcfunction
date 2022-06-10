scoreboard players remove @s Mana 18
scoreboard players set @s CooldownX 720
scoreboard players set @s CooldownX_max 720

playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.5 0.5
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.8 2

execute at @s anchored eyes positioned ^ ^ ^0.1 run summon item ~ ~ ~ {Tags:["blue_fire_gem","first"],Fire:2s,Invulnerable:1b,Age:5800s,PickupDelay:32767s,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:81}}}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^-0.05 ^2.0 {Tags:["vector"],Duration:1}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos

kill @e[tag=vector]
tag @e[tag=first] remove first
