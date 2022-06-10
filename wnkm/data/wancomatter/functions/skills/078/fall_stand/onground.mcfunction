scoreboard players add @s counter 1
execute if score @s counter matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:200}}]}
execute if score @s counter matches 2 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:201}}]}
execute if score @s counter matches 3 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:202}}]}
execute if score @s counter matches 4 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:203}}]}
execute if score @s counter matches 5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:204}}]}
execute if score @s counter matches 6 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:205}}]}
execute if score @s counter matches 7 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:206}}]}
execute if score @s counter matches 8 run summon minecraft:armor_stand ~ ~ ~ {Tags:["meteor_stand_aoc","first"],Invisible:1b,Silent:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:207}}]}

execute if score @s counter matches ..7 run scoreboard players set @e[tag=first] counter 4
execute if score @s counter matches 8 run scoreboard players set @e[tag=first] counter 203

tag @e[tag=first] remove first
execute if score @s counter matches 8.. run kill @s
