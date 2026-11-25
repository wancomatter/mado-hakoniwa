playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.6
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.3 160 normal @a
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.3 40 force @a

summon area_effect_cloud ~ ~ ~ {Age:0,Duration:202,Radius:0.0f,Tags:["first","blue_fire_stand","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players set @e[tag=first,limit=1] subcounter 100
scoreboard players set @e[tag=first,limit=1] subcounter2 100
tag @e[tag=first] remove first
kill @s
