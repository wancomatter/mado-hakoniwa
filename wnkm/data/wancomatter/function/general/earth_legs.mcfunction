execute if data entity @s {HurtTime:10s} store result score @s jumpBug run data get entity @s Motion[1] 100
execute if score @s jumpBug matches 501.. run tp @s @s
execute if score @s jumpBug matches -2147483648..2147483647 run scoreboard players reset @s jumpBug

execute unless score @s sneak matches 1.. run effect give @s jump_boost 1 254 true
execute if score @s sneak matches 1.. run effect clear @s jump_boost
