scoreboard players add @s counter 1
execute if score @s counter matches 100.. run kill @s
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 2 force @a
execute store result score @s subcounter run data get entity @s Motion[1] 10000
execute store result entity @s Motion[1] double 0.0001 run scoreboard players remove @s subcounter 968
execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 1040.1538461538461538461538461539
execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 1040.1538461538461538461538461539

tag @s add GreL_judging
execute as @e[tag=GreL_judge] if score @s subcounter2 = @e[tag=GreL_judging,limit=1] subcounter2 run kill @s
summon minecraft:armor_stand ~ ~ ~ {Tags:["discharge","GreL_judge"],Marker:1b,NoGravity:1b,Invisible:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] subcounter2 = @s subcounter2
execute store result score @e[tag=discharge,limit=1] Cooldown1 run data get entity @s Motion[0] 1000
execute store result score @e[tag=discharge,limit=1] Cooldown2 run data get entity @s Motion[1] 1000
execute store result score @e[tag=discharge,limit=1] Cooldown3 run data get entity @s Motion[2] 1000
tag @s remove GreL_judging
tag @e[tag=discharge] remove discharge