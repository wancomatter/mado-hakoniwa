tag @s add b3s20
tag @s add b3s20first
scoreboard players set @s counter -40
effect give @s minecraft:luck 2 9 true
effect give @s minecraft:slowness 2 9 true

execute store result score @s dummy run data get entity @s Pos[0] -10
execute store result entity @s Motion[0] double 0.0148 run scoreboard players add @s dummy 5
execute store result score @s dummy run data get entity @s Pos[1] -10
execute store result entity @s Motion[1] double 0.01667 run scoreboard players add @s dummy 147
execute store result score @s dummy run data get entity @s Pos[2] -10
execute store result entity @s Motion[2] double 0.0148 run scoreboard players add @s dummy 5

execute if entity @a[tag=!b3targeted,limit=1,distance=..99] run function wancomatter:boss/dusk/skill20/throw_ravager
execute if score #difficult counter matches 3..4 if entity @a[tag=!b3targeted,limit=1,distance=..99] run function wancomatter:boss/dusk/skill20/throw_ravager
execute if score #difficult counter matches 4 if entity @a[tag=!b3targeted,limit=1,distance=..99] run function wancomatter:boss/dusk/skill20/throw_ravager
execute if score #difficult counter matches 2 run effect give @e[tag=b3beast] minecraft:luck 1000000 0 true
execute if score #difficult counter matches 3 run effect give @e[tag=b3beast] minecraft:luck 1000000 1 true
execute if score #difficult counter matches 4 run effect give @e[tag=b3beast] minecraft:luck 1000000 2 true
execute if score #difficult counter matches 4 run effect give @e[tag=b3beast] minecraft:strength 1000000 0 true
execute if score #difficult counter matches 4 run effect give @e[tag=b3beast] minecraft:speed 1000000 0 true
tag @a[tag=b3targeted] remove b3targeted

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 6 2
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.5 200 force @a
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.4 400 normal @a
tag @s add usedskill