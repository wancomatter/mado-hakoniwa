execute if score #difficult counter matches 2 run summon area_effect_cloud ~ 6.5 ~ {Duration:100,Tags:["bear_s8AEC2"]}
execute if score #difficult counter matches 3 run summon area_effect_cloud ~ 6.5 ~ {Duration:150,Tags:["bear_s8AEC2"]}
execute if score #difficult counter matches 4 run summon area_effect_cloud ~ 6.5 ~ {Duration:200,Tags:["bear_s8AEC2"]}
execute unless score #difficult counter matches 3..4 run particle minecraft:falling_dust ice ~ ~1 ~ 5 0 5 1 200 normal @a
execute unless score #difficult counter matches 3..4 run particle minecraft:falling_dust ice ~ ~1 ~ 5 0 5 1 50 force @a
execute if score #difficult counter matches 3 run particle minecraft:falling_dust ice ~ ~1 ~ 6 0 6 1 350 normal @a
execute if score #difficult counter matches 3 run particle minecraft:falling_dust ice ~ ~1 ~ 6 0 6 1 70 force @a
execute if score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 7 0 7 1 350 normal @a
execute if score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 7 0 7 1 70 force @a
particle minecraft:cloud ~ ~1 ~ 3 3 3 0.3 400 normal @a
particle minecraft:cloud ~ ~1 ~ 3 3 3 0.3 100 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.8