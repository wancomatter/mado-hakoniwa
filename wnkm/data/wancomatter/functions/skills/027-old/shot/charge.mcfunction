execute if score @s counter matches 1 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 2.00
execute if score @s counter matches 2 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.95
execute if score @s counter matches 3 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.90
execute if score @s counter matches 4 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.85
execute if score @s counter matches 5 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.80
execute if score @s counter matches 6 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.75
execute if score @s counter matches 7 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.70
execute if score @s counter matches 8 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.65
execute if score @s counter matches 9 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.60
execute if score @s counter matches 10 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.55
execute if score @s counter matches 10 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.50
execute if score @s counter matches 11 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.45
execute if score @s counter matches 12 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.40
execute if score @s counter matches 13 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.35
execute if score @s counter matches 14 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.30
execute if score @s counter matches 15 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.25
execute if score @s counter matches 16 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.20
execute if score @s counter matches 17 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.15
execute if score @s counter matches 18 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.10
execute if score @s counter matches 19 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.05
execute if score @s counter matches 20 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 1.00

tag @s add 179this
execute as @e[tag=-179_2_target] if score @s subcounter = @e[tag=179this,limit=1] subcounter facing entity @s feet run tp @e[tag=179this,limit=1] ~ ~ ~ ~ ~
tag @s remove 179this
