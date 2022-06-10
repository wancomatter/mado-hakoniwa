summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot","b1s1-sound"],data:{rotate:0}}
execute if score #difficult counter matches 4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:10}}
execute if score #difficult counter matches 3..4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:20}}
execute if score #difficult counter matches 4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:30}}
execute if score #difficult counter matches 4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:10s}}
execute if score #difficult counter matches 3..4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:20s}}
execute if score #difficult counter matches 4 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1sparkshot"],data:{rotate:30s}}
execute as @e[tag=discharge] run scoreboard players operation @s teamNumber = @e[tag=old-detonator,limit=1] teamNumber
execute as @e[tag=discharge] at @s facing entity @e[tag=detonator-target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=discharge] store result score @s subcounter run data get entity @s Rotation[0] 100
execute as @e[tag=discharge] store result score @s subcounter2 run data get entity @s data.rotate 100
execute as @e[tag=discharge] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s subcounter += @s subcounter2
tag @e[tag=discharge] remove discharge