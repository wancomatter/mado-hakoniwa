execute unless entity @s[tag=b3s21used] run scoreboard players set @s Cooldown1 70
execute if entity @s[tag=b3s21used] run scoreboard players set @s Cooldown1 40
execute if entity @s[tag=!b3s21used] run scoreboard players set @s counter 50
execute unless entity @e[tag=target,limit=1] run tag @s add usedskill
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
summon minecraft:armor_stand ~ ~3.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3s1sound","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 2..4 run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-L","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 2..4 run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-R","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 3..4 run summon minecraft:armor_stand ~ ~2.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-L2","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 3..4 run summon minecraft:armor_stand ~ ~2.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-R2","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 4 run summon minecraft:armor_stand ~ ~2.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-L3","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute if score #difficult counter matches 4 run summon minecraft:armor_stand ~ ~2.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3vermilionLance","b3Lance-R3","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}}}
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,limit=1,sort=nearest] if entity @s[y=7,dy=0.5] run summon area_effect_cloud ~ 7.5 ~ {Duration:2,Tags:["target","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,limit=1,sort=nearest] unless entity @s[y=7,dy=0] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["target","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute as @e[tag=this] at @s facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this,tag=b3Lance-L] at @s run tp @s ~ ~ ~ ~-7 ~
execute as @e[tag=this,tag=b3Lance-R] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=this,tag=b3Lance-L2] at @s run tp @s ~ ~ ~ ~-14 ~
execute as @e[tag=this,tag=b3Lance-R2] at @s run tp @s ~ ~ ~ ~14 ~
execute as @e[tag=this,tag=b3Lance-L3] at @s run tp @s ~ ~ ~ ~-21 ~
execute as @e[tag=this,tag=b3Lance-R3] at @s run tp @s ~ ~ ~ ~21 ~
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
kill @e[tag=target]
tag @e[tag=this] remove this
particle minecraft:poof ~ ~ ~ 1 1 1 1 100 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 2
function wancomatter:boss/dusk/skill0/advent
