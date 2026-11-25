summon armor_stand ~ ~0.3 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3s0target","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players set @e[tag=this] counter 42
tag @e[tag=this] remove this
