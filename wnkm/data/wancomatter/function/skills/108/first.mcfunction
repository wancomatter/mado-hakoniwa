scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 0.66
summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:9b,Duration:28,Id:4,ShowIcon:1b,ShowParticles:0b}],Radius:0.4f,WaitTime:1,potion_contents:{custom_effects:[{amplifier:9b,duration:28,id:"minecraft:mining_fatigue",show_icon:1b,show_particles:0b}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}

execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~-0.6 ~ {DisabledSlots:2039583,Invisible:1b,Pose:{Head:[10.0f,0.0f,0.0f]},Silent:1b,Small:1b,Tags:["first","throw_axe","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:108},"minecraft:item_model":"wnkm:appearance/iron_hoe/108"},count:1,id:"minecraft:iron_hoe"}}}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
data modify entity @e[tag=first,limit=1,sort=nearest] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]
execute positioned 0.0 0.15 0.0 run summon area_effect_cloud ^ ^ ^1.3 {Duration:1,Tags:["vector","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
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
