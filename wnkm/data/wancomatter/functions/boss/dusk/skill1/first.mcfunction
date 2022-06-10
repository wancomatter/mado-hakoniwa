execute unless entity @s[tag=b3s21used] run scoreboard players set @s Cooldown1 70
execute if entity @s[tag=b3s21used] run scoreboard players set @s Cooldown1 40
execute if entity @s[tag=!b3s21used] run scoreboard players set @s counter 50
execute unless entity @e[tag=target,limit=1] run tag @s add usedskill
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
summon minecraft:armor_stand ~ ~3.5 ~ {Tags:["this","b3vermilionLance","b3s1sound"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 2..4 run summon minecraft:armor_stand ~ ~3 ~ {Tags:["this","b3vermilionLance","b3Lance-L"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 2..4 run summon minecraft:armor_stand ~ ~3 ~ {Tags:["this","b3vermilionLance","b3Lance-R"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 3..4 run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["this","b3vermilionLance","b3Lance-L2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 3..4 run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["this","b3vermilionLance","b3Lance-R2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 4 run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["this","b3vermilionLance","b3Lance-L3"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute if score #difficult counter matches 4 run summon minecraft:armor_stand ~ ~2.5 ~ {Tags:["this","b3vermilionLance","b3Lance-R3"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1003}}]}
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,limit=1,sort=nearest] if entity @s[y=7,dy=0.5] run summon area_effect_cloud ~ 7.5 ~ {Duration:2,Tags:["target"]}
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,limit=1,sort=nearest] unless entity @s[y=7,dy=0] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["target"]}
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