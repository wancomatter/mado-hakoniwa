scoreboard players add @s counter 1
execute if score @s counter matches 1 store result entity @s damage double 0.005 run scoreboard players get @s subcounter
execute if score @s counter matches 2 store result entity @s damage double 0.006 run scoreboard players get @s subcounter
execute if score @s counter matches 3 store result entity @s damage double 0.007 run scoreboard players get @s subcounter
execute if score @s counter matches 4 store result entity @s damage double 0.008 run scoreboard players get @s subcounter
execute if score @s counter matches 5 store result entity @s damage double 0.009 run scoreboard players get @s subcounter
execute if score @s counter matches 6 store result entity @s damage double 0.010 run scoreboard players get @s subcounter
particle minecraft:lava ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:instant_effect ~ ~ ~ 0 0 0 1 20 force @a
execute if data entity @s {inGround:1b} run scoreboard players set @s counter 241
execute if score @s counter matches 240.. run kill @s
