summon area_effect_cloud ~ ~ ~ {Tags:["first","star_feather_AEC"],Radius:0f,Duration:100,Age:0}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first] Mana = @s Mana
scoreboard players operation @e[tag=first] counter = @s counter
scoreboard players operation @e[tag=first] counter /= #2 counter
scoreboard players remove @e[tag=first] counter 11
execute as @e[tag=first] run function wancomatter:skills/018/summon_star4
tag @e[tag=first] remove first