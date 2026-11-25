execute store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539

execute if data entity @s {OnGround:1b} run data merge entity @s {Marker:1b,Motion:[0d,0d,0d]}
execute if data entity @s {OnGround:1b} run tag @s remove meteroStand_noGround
execute if data entity @s {OnGround:1b} run scoreboard players set @s counter 40
