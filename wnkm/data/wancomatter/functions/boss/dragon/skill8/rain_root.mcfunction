data merge storage random: {min:-180,max:180}
execute store result entity @s Rotation[0] float 1 run function wancomatter:operation/random
data merge storage random: {min:2,max:150}
execute store result score @s subcounter run function wancomatter:operation/random

#execute if score @s subcounter matches 256.. at @s run tp @s ^ ^ ^25.6
#execute if score @s subcounter matches 256.. run scoreboard players remove @s subcounter 256
execute if score @s subcounter matches 128.. at @s run tp @s ^ ^ ^12.8
execute if score @s subcounter matches 128.. run scoreboard players remove @s subcounter 128
execute if score @s subcounter matches 64.. at @s run tp @s ^ ^ ^6.4
execute if score @s subcounter matches 64.. run scoreboard players remove @s subcounter 64
execute if score @s subcounter matches 32.. at @s run tp @s ^ ^ ^3.2
execute if score @s subcounter matches 32.. run scoreboard players remove @s subcounter 32
execute if score @s subcounter matches 16.. at @s run tp @s ^ ^ ^1.6
execute if score @s subcounter matches 16.. run scoreboard players remove @s subcounter 16
execute if score @s subcounter matches 8.. at @s run tp @s ^ ^ ^0.8
execute if score @s subcounter matches 8.. run scoreboard players remove @s subcounter 8
execute if score @s subcounter matches 4.. at @s run tp @s ^ ^ ^0.4
execute if score @s subcounter matches 4.. run scoreboard players remove @s subcounter 4
execute if score @s subcounter matches 2.. at @s run tp @s ^ ^ ^0.2
execute if score @s subcounter matches 2.. run scoreboard players remove @s subcounter 2
execute if score @s subcounter matches 1.. at @s run tp @s ^ ^ ^0.1
execute if score @s subcounter matches 1.. run scoreboard players remove @s subcounter 1

execute at @s run function wancomatter:boss/dragon/skill8/rain
tp @s ~ ~ ~