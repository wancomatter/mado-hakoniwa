scoreboard players operation #dragonBoss counter = @s aviate
scoreboard players operation #dragonBoss counter *= #2 counter


execute if score #dragonBoss counter matches 256.. at @s run tp @s ^ ^ ^2.56
execute if score #dragonBoss counter matches 256.. run scoreboard players remove #dragonBoss counter 256
execute if score #dragonBoss counter matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score #dragonBoss counter matches 128.. run scoreboard players remove #dragonBoss counter 128
execute if score #dragonBoss counter matches 64.. at @s run tp @s ^ ^ ^0.64
execute if score #dragonBoss counter matches 64.. run scoreboard players remove #dragonBoss counter 64
execute if score #dragonBoss counter matches 32.. at @s run tp @s ^ ^ ^0.32
execute if score #dragonBoss counter matches 32.. run scoreboard players remove #dragonBoss counter 32
execute if score #dragonBoss counter matches 16.. at @s run tp @s ^ ^ ^0.16
execute if score #dragonBoss counter matches 16.. run scoreboard players remove #dragonBoss counter 16
execute if score #dragonBoss counter matches 8.. at @s run tp @s ^ ^ ^0.08
execute if score #dragonBoss counter matches 8.. run scoreboard players remove #dragonBoss counter 8
execute if score #dragonBoss counter matches 4.. at @s run tp @s ^ ^ ^0.04
execute if score #dragonBoss counter matches 4.. run scoreboard players remove #dragonBoss counter 4
execute if score #dragonBoss counter matches 2.. at @s run tp @s ^ ^ ^0.02
execute if score #dragonBoss counter matches 2.. run scoreboard players remove #dragonBoss counter 2
execute if score #dragonBoss counter matches 1.. at @s run tp @s ^ ^ ^0.01
execute if score #dragonBoss counter matches 1.. run scoreboard players remove #dragonBoss counter 1

scoreboard players remove @s pageChange 1
execute unless score @s pageChange matches 1.. run function wancomatter:boss/dragon/skill3/4
