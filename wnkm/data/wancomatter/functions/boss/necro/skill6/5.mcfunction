scoreboard players add @s counter 1
scoreboard players add @s subcounter 1

tp @s ^ ^ ^1.75

execute if entity @s[scores={subcounter=2}] run summon armor_stand ~ ~ ~ {Motion:[0.0d,-0.3d,0.0d],Small:1b,Silent:1b,Invisible:1b,Tags:["necro_s6_darknessoverload_meteor"]}
scoreboard players set @s[scores={subcounter=2}] subcounter 0

execute if block ~ 17 ~ minecraft:air run scoreboard players set @s counter 100
execute if entity @s[scores={counter=30..}] run kill @s
