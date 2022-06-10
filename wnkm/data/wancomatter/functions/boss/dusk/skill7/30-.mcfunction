scoreboard players operation @s counter += @s Mana
summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["this","b3roundLance"],Marker:1b,NoGravity:1b,Invisible:1b}
execute store result entity @e[tag=this,limit=1,sort=nearest] Rotation[0] float 0.1 run scoreboard players get @s counter
execute unless score #difficult counter matches 4 as @e[tag=this] at @s run tp @s ^ ^ ^6
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
particle minecraft:poof ~ ~ ~ 1 1 1 1 10 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 2

execute if score @s counter >= @s subcounter run kill @s