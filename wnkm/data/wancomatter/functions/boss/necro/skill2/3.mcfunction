execute unless score #difficult counter matches 2..4 at @s run tp @s ^ ^ ^0.7
execute if score #difficult counter matches 2 at @s run tp @s ^ ^ ^0.8
execute if score #difficult counter matches 3 at @s run tp @s ^ ^ ^0.9
execute if score #difficult counter matches 4 at @s run tp @s ^ ^ ^1.0

scoreboard players add @s counter 1
execute if entity @a[gamemode=!spectator,scores={maxHP=1..},distance=..2.7,limit=1] run scoreboard players set @s counter 200
execute if score @s counter matches 50.. run function wancomatter:boss/necro/skill2/end
