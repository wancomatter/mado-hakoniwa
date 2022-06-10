scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 0.66
summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:4,Amplifier:9b,Duration:28,ShowParticles:0b,ShowIcon:1b}],Radius:0.4f,Duration:5,Age:4,WaitTime:1}

execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~-0.6 ~ {Tags:["first","throw_axe"],Invisible:1b,Small:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:108}}],Pose:{Head:[10f,0f,0f]},DisabledSlots:2039583}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
data modify entity @e[tag=first,limit=1,sort=nearest] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]
execute positioned 0.0 0.15 0.0 run summon area_effect_cloud ^ ^ ^1.3 {Tags:["vector"],Duration:1}
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

scoreboard players set @e[tag=first] counter 0
scoreboard players set @e[tag=first] subcounter -90
tag @e[tag=first] remove first
scoreboard players reset #dummy

#投擲演出
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1.2 1.45
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 1.45
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1.2 0.5
