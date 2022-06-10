scoreboard players add @s counter 1

summon minecraft:marker ~ ~ ~ {Tags:["b3circleFire","first","this"]}
execute store result entity @e[tag=this,limit=1] Rotation[0] float 0.01 run scoreboard players get @s subcounter
execute store result entity @e[tag=this,limit=1] Rotation[1] float 0.01 run scoreboard players get @s subcounter2
scoreboard players operation @e[tag=first] subcounter = @s subcounter
scoreboard players operation @e[tag=first] subcounter2 = @s subcounter2
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=this] counter -10
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=this] counter -7
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] counter -3
tag @e[tag=first] remove first
tag @e[tag=this] remove this

playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 3 0.5
execute if score @s counter matches 40.. run kill @s