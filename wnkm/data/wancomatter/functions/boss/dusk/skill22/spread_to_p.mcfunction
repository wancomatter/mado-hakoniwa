summon minecraft:armor_stand ~ ~ ~ {Tags:["this","b3s22fire","pyaa"],Invisible:1b,Silent:1b}
execute store result entity @e[tag=this,limit=1] Motion[0] double 0.0091 run data get entity @s Pos[0] 10
execute store result entity @e[tag=this,limit=1] Motion[2] double 0.0091 run data get entity @s Pos[2] 10
execute as @e[tag=this] run data modify entity @s Motion[1] set value 2.0d
scoreboard players operation @e[tag=this] teamNumber = #dummy teamNumber
tag @e[tag=this] remove this
tag @s remove b3s22target
