execute unless score #difficult counter matches 2..4 at @s run tp @s ^ ^ ^1.6
execute if score #difficult counter matches 2 at @s run tp @s ^ ^ ^2.0
execute if score #difficult counter matches 3 at @s run tp @s ^ ^ ^2.5
execute if score #difficult counter matches 4 at @s run tp @s ^ ^ ^3.2

scoreboard players add @s counter 1
execute at @s positioned ^ ^ ^1.6 if block ~ 17 ~ minecraft:air run scoreboard players set @s counter 200
execute if entity @a[gamemode=!spectator,scores={maxHP=1..},distance=..2.7,limit=1] run scoreboard players set @s counter 200
execute positioned ^ ^ ^-1.25 if entity @a[gamemode=!spectator,scores={maxHP=1..},distance=..2.7,limit=1] run scoreboard players set @s counter 200
execute if score @s counter matches 120.. run function wancomatter:boss/necro/skill7/end
