scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..9.7] if score @s teamNumber = #dummy teamNumber run tag @s add heal_dummy
scoreboard players operation @e[tag=heal_dummy] HPheal += @s healPower
execute as @e[tag=heal_dummy] store result score @s dummy run data get entity @s Fire 1
execute as @a[tag=heal_dummy,scores={dummy=1..}] run gamemode spectator @s
execute as @a[tag=heal_dummy,scores={dummy=1..}] run tp @s @s
execute as @a[tag=heal_dummy,scores={dummy=1..}] run tag @s add care_fire
execute as @e[type=!player,tag=heal_dummy,scores={dummy=1..}] run data merge entity @s {Fire:0s}
execute as @e[tag=heal_dummy] run scoreboard players reset @s dummy
execute as @e[tag=heal_dummy] run tag @s remove heal_dummy
scoreboard players reset #dummy teamNumber

scoreboard players add @s subcounter 1
scoreboard players set @s counter 0