summon minecraft:armor_stand ~ ~ ~ {Tags:["this","b3s21turret"],Marker:1b,NoGravity:1b,Invisible:1b}
execute store result entity @e[tag=this,limit=1,sort=nearest] Rotation[0] float 0.1 run scoreboard players get @s subcounter
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
scoreboard players operation @s subcounter += @s dummy
execute unless score @s subcounter >= @s subcounter2 run function wancomatter:boss/dusk/skill21/shoot-loop