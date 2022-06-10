summon armor_stand ~ ~0.3 ~ {Tags:["this","b3s0target"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players set @e[tag=this] counter 42
tag @e[tag=this] remove this