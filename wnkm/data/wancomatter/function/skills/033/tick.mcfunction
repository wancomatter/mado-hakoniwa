scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[distance=..5] if score #dummy playerNumber = @s playerNumber run tag @s add sm-horse-rider
execute if score @s HP matches 196.. run particle dust{color:[0,1,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-horse-rider]
execute if score @s HP matches 131..195 run particle dust{color:[1,1,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-horse-rider]
execute if score @s HP matches 66..130 run particle dust{color:[1,0.5,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-horse-rider]
execute if score @s HP matches ..65 run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-horse-rider]
tag @a[tag=sm-horse-rider] remove sm-horse-rider
