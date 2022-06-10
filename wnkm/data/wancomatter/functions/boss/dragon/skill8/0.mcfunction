summon area_effect_cloud ~ ~ ~ {Duration:200,Age:0,Tags:["dragon_s8_AEC","dragon_entity","init"]}
scoreboard players operation @e[tag=init,limit=1] playerNumber = #dragonBoss playerNumber
scoreboard players operation @e[tag=init,limit=1] teamNumber = #dragonBoss teamNumber
tag @e[tag=init] remove init