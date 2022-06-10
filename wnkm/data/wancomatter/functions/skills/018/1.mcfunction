summon area_effect_cloud ~ ~1.2 ~ {Tags:["star_feather_marker"],Radius:0f,Duration:1,Age:0}
execute if score @s Mana matches 2.. run summon area_effect_cloud ~ ~1.2 ~ {Tags:["star_feather_marker"],Radius:0f,Duration:1,Age:0}
execute if score @s Mana matches 3.. run summon area_effect_cloud ~ ~1.2 ~ {Tags:["star_feather_marker"],Radius:0f,Duration:1,Age:0}
execute if score @s Mana matches 4.. run summon area_effect_cloud ~ ~1.2 ~ {Tags:["star_feather_marker"],Radius:0f,Duration:1,Age:0}

execute as @e[tag=star_feather_marker] run function wancomatter:skills/018/1_set
execute as @e[tag=star_feather_marker] at @e[tag=star_feather_marker] run function wancomatter:skills/018/1_particle

execute if score @s Mana matches 5 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 1 normal @a
execute if score @s Mana matches 5 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 1 force @a
execute if score @s Mana matches 6 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 3 normal @a
execute if score @s Mana matches 6 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 1 force @a
execute if score @s Mana matches 7 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 4 normal @a
execute if score @s Mana matches 7 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 2 force @a
execute if score @s Mana matches 8 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 6 normal @a
execute if score @s Mana matches 8 run particle minecraft:falling_dust bricks ~ ~1.2 ~ 1 1 1 1 2 force @a

execute if score @s Mana matches 8 run particle minecraft:falling_dust obsidian ~ ~1.2 ~ 1 1 1 1 8 normal @a
execute if score @s Mana matches 8 run particle minecraft:falling_dust obsidian ~ ~1.2 ~ 1 1 1 1 3 force @a

execute as @e[tag=star_feather_marker] at @e[tag=star_feather_marker] run function wancomatter:skills/018/1_particle2
