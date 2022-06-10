scoreboard players remove @s Mana 12
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[type=shulker,tag=wnkm035shulker] if score @s ownerNumber = #dummy playerNumber run kill @s
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.2 0.5

#NoAI:1b,Tags:["mob","mobInit"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20}],AbsorptionAmount:120

execute anchored eyes positioned ^ ^2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^ ^1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^ ^0 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^ ^-1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^ ^-2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^1 ^2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^1 ^1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^1 ^0 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^1 ^-1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^1 ^-2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^2 ^2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^2 ^1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^2 ^0 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^2 ^-1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^2 ^-2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-1 ^2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-1 ^1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-1 ^0 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-1 ^-1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-1 ^-2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-2 ^2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-2 ^1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-2 ^0 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-2 ^-1 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute anchored eyes positioned ^-2 ^-2 ^3.5 run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Tags:["shulkerPassenged","035-"],Duration:600,Passengers:[{id:"minecraft:shulker",Color:0b,Silent:1b,NoAI:1b,Tags:["discharge","wnkm035shulker","wall_entity","035-","mob"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"minecraft:generic.armor",Base:20d}]}]}
execute as @e[tag=035-] positioned as @s run tp @s ~ ~ ~ ~ 0
scoreboard players set @e[tag=035-,type=shulker] maxHP 100
scoreboard players set @e[tag=035-,type=shulker] HP 100
execute as @e[tag=035-,type=shulker,limit=1,sort=arbitrary] run function wancomatter:skills/035/counter_set
execute as @e[tag=035-] run tag @s remove 035-

scoreboard players operation @e[tag=discharge] ownerNumber = #dummy playerNumber
scoreboard players operation @e[tag=discharge] teamNumber = @s teamNumber
scoreboard players reset #dummy
execute if score @s teamNumber matches 1 run team join Red @e[tag=discharge]
execute if score @s teamNumber matches 2 run team join Aqua @e[tag=discharge]
execute if score @s teamNumber matches 3 run team join Yellow @e[tag=discharge]
execute if score @s teamNumber matches 4 run team join Green @e[tag=discharge]
execute if score @s teamNumber matches 5 run team join Purple @e[tag=discharge]
execute if score @s teamNumber matches 6 run team join White @e[tag=discharge]
execute if score @s teamNumber matches 7 run team join Black @e[tag=discharge]
execute if score @s teamNumber matches 8 run team join Blue @e[tag=discharge]
execute if score @s teamNumber matches 9 run team join Pink @e[tag=discharge]
execute if score @s teamNumber matches 10 run team join Gold @e[tag=discharge]
execute if score @s teamNumber matches 11 run team join Gray @e[tag=discharge]
execute if score @s teamNumber matches 12 run team join DarkRed @e[tag=discharge]
execute if score @s teamNumber matches 13 run team join DarkAqua @e[tag=discharge]
execute if score @s teamNumber matches 14 run team join DarkGreen @e[tag=discharge]
execute if score @s teamNumber matches 15 run team join DarkBlue @e[tag=discharge]
execute if score @s teamNumber matches 16 run team join DarkGray @e[tag=discharge]
execute if score @s teamNumber matches 17 run team join noPush @e[tag=discharge]
execute if score @s teamNumber matches 1 as @e[tag=discharge] run data merge entity @s {Color:14b}
execute if score @s teamNumber matches 2 as @e[tag=discharge] run data merge entity @s {Color:3b}
execute if score @s teamNumber matches 3 as @e[tag=discharge] run data merge entity @s {Color:4b}
execute if score @s teamNumber matches 4 as @e[tag=discharge] run data merge entity @s {Color:5b}
execute if score @s teamNumber matches 5 as @e[tag=discharge] run data merge entity @s {Color:10b}
execute if score @s teamNumber matches 6 as @e[tag=discharge] run data merge entity @s {Color:0b}
execute if score @s teamNumber matches 7 as @e[tag=discharge] run data merge entity @s {Color:15b}
execute if score @s teamNumber matches 8 as @e[tag=discharge] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 9 as @e[tag=discharge] run data merge entity @s {Color:6b}
execute if score @s teamNumber matches 10 as @e[tag=discharge] run data merge entity @s {Color:1b}
execute if score @s teamNumber matches 11 as @e[tag=discharge] run data merge entity @s {Color:8b}
execute if score @s teamNumber matches 12 as @e[tag=discharge] run data merge entity @s {Color:2b}
execute if score @s teamNumber matches 13 as @e[tag=discharge] run data merge entity @s {Color:9b}
execute if score @s teamNumber matches 14 as @e[tag=discharge] run data merge entity @s {Color:13b}
execute if score @s teamNumber matches 15 as @e[tag=discharge] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 16 as @e[tag=discharge] run data merge entity @s {Color:7b}
tag @e[tag=discharge] remove discharge