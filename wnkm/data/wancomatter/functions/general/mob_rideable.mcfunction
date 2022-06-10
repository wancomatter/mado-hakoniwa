execute store result score @s dummy run data get entity @s Health 10
execute if score @s dummy < @s HP run tag @s add mobR_getDamage
execute if entity @s[tag=mobR_getDamage] run scoreboard players operation @s damageTaken = @s HP
execute if entity @s[tag=mobR_getDamage] run scoreboard players operation @s damageTaken -= @s dummy
execute if entity @s[tag=mobR_getDamage] run function wancomatter:general/damagetaken/main
execute if entity @s[tag=mobR_getDamage] store result entity @s Health float 0.1 run scoreboard players get @s HP
execute if entity @s[tag=mobR_getDamage] run tag @s remove mobR_getDamage
execute if score @s dummy > @s HP store result entity @s Health float 0.1 run scoreboard players get @s HP
