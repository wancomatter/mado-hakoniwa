scoreboard players add @s counter 1

execute if score @s counter matches 7 run playsound minecraft:item.totem.use master @a ~ ~ ~ 4 1.6
execute if score @s counter matches 7 run particle minecraft:dust 0 0 0 1 ^ ^0.3 ^4.6 0.5 0.5 0.5 1 100 force @a
#execute if score @s counter matches 8.. run particle minecraft:flame ^ ^0.3 ^ 0.1 0.1 0.1 0 1 force @a
execute if score @s counter matches 2 run tp @s ^ ^ ^0.1
execute if score @s counter matches 7.. run scoreboard players set @s subcounter 0
execute if score @s counter matches 7.. run tag @s add this
execute if score @s counter matches 7.. run function wancomatter:boss/dusk/skill7/fly
execute if score @s counter matches 7.. run tag @s remove this
execute if score @s counter matches 7.. if entity @e[tag=hit-already,limit=1] run tag @e[tag=hit-already] remove hit-already
execute if score @s counter matches 60.. run kill @s