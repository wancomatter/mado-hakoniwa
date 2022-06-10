data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.3d
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound"],data:{rotate:0}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow"],data:{rotate:16}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow"],data:{rotate:32}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound"],data:{rotate:48}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow"],data:{rotate:-16}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow"],data:{rotate:-32}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound"],data:{rotate:-48}}

summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back1"],data:{rotate:8}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound","b1back1"],data:{rotate:24}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back1"],data:{rotate:40}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back1"],data:{rotate:-8}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound","b1back1"],data:{rotate:-24}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back1"],data:{rotate:-40}}

summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1s4sound","b1back2"],data:{rotate:0}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2"],data:{rotate:16}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2"],data:{rotate:32}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2","b1s4sound"],data:{rotate:48}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2"],data:{rotate:-16}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2"],data:{rotate:-32}}
summon minecraft:marker ~ ~0.5 ~ {Tags:["discharge","b1razeblow","b1back2","b1s4sound"],data:{rotate:-48}}

scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[tag=discharge] run scoreboard players operation @s teamNumber = #dummy teamNumber
execute as @e[tag=discharge] store result score @s dummy run data get entity @s data.rotate 1
execute store result score #dummy dummy run data get entity @s Rotation[0] 1
execute as @e[tag=discharge] store result entity @s Rotation[0] float 1 run scoreboard players operation @s dummy += #dummy dummy
execute as @e[tag=discharge] if entity @s[tag=b1back1] at @s run tp @s ^ ^ ^-3
execute as @e[tag=discharge] if entity @s[tag=b1back2] at @s run tp @s ^ ^ ^-6
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy