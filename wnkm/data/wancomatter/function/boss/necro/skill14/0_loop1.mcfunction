summon minecraft:armor_stand ~ ~ ~ {Fire:32767s,Glowing:1b,Invisible:1b,Marker:1b,NoGravity:1b,Pose:{Head:[0.0f,180.0f,0.0f]},Rotation:[0.0f,0.0f],Small:1b,Tags:["necro_s14_barrier","first","wnkm.owned","wnkm.round"],Team:"Purple",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1},"minecraft:item_model":"wnkm:appearance/stone_hoe/1"},count:1,id:"minecraft:stone_hoe"}}}
tp @e[tag=first,limit=1] ~ ~ ~ ~ 0
scoreboard players operation @e[tag=first,limit=1] subcounter = #dummy dummy
scoreboard players add #dummy dummy 1
tag @e[tag=first] remove first
execute unless score #dummy dummy matches 4.. rotated ~120 0 run function wancomatter:boss/necro/skill14/0_loop1
