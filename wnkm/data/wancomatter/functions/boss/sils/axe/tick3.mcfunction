scoreboard players add @s counter 1
execute if score @s counter matches 1..11 run scoreboard players add @s subcounter 7
scoreboard players operation @s subcounter2 += @s subcounter
execute if entity @s[scores={subcounter2=181..}] run scoreboard players remove @s subcounter2 360
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s subcounter2
execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 110
execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 110

execute if entity @s[scores={counter=2..32}] store result score @s Cooldown2 run data get entity @s Motion[1] 100
execute if entity @s[scores={counter=2..10}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 8
execute if entity @s[scores={counter=11..16}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 7
execute if entity @s[scores={counter=17..22}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 6
execute if entity @s[scores={counter=23..27}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 5
execute if entity @s[scores={counter=28..32}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 4

particle minecraft:block diamond_block ~ ~0.75 ~ 0.1 0.1 0.1 1 8 force @a
particle minecraft:block diamond_block ~ ~0.75 ~ 0.6 0.6 0.6 1 32 normal @a
particle minecraft:poof ~ ~1 ~ 0.3 0 0.3 0.03 5 force @a
execute positioned ~ ~0.5 ~ run function wancomatter:boss/sils/axe/slime3
execute if data entity @s {OnGround:1b} run kill @s
execute if score @s counter matches 60.. run kill @s
