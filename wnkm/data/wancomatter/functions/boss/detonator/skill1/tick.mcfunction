execute unless score @s counter matches 100.. run scoreboard players add @s dummy 1
execute if score @s Cooldown1 matches 1.. if score @s counter matches 105 run scoreboard players add @s counter 1
execute if score @s Cooldown1 matches 1.. run scoreboard players remove @s Cooldown1 1
execute unless score @s Cooldown1 matches 1.. run scoreboard players add @s counter 1
execute if score @s dummy matches 5.. run function wancomatter:boss/detonator/skill1/tick5
scoreboard players operation @s subcounter2 += @s subcounter
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s subcounter2
execute if entity @s[tag=b1s1-sound,scores={counter=..100}] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2.5 2
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^2.4 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^3.6 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^4.8 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^6.0 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^7.2 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^8.4 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^9.6 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^10.8 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^12.0 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^13.2 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^14.4 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^15.6 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^16.8 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^18.0 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^19.2 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^20.4 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^21.6 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^22.8 0 0 0 0 1 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^24.0 0 0 0 0 1 force @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^25.2 0 0 0 0 1 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^26.4 0 0 0 0 1 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^27.6 0 0 0 0 1 force @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^28.8 0 0 0 0 1 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^30.0 0 0 0 0 1 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^31.2 0 0 0 0 1 force @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^32.4 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^33.6 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^34.8 0 0 0 0 1 force @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^36.0 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^37.2 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^38.4 0 0 0 0 1 force @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^39.6 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^40.8 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^42.0 0 0 0 0 1 force @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^42.2 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^43.4 0 0 0 0 1 normal @a
execute if score #difficult counter matches 4.. run particle minecraft:dust 1 1 0 0.75 ^ ^0.5 ^44.6 0 0 0 0 1 force @a
execute if score @s counter matches 105 run function wancomatter:boss/detonator/skill1/105
execute if score @s counter matches 125..130 run function wancomatter:boss/detonator/skill1/125-
execute if score @s counter matches 130.. run kill @s