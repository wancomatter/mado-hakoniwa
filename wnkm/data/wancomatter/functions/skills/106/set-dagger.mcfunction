tag @s add pickupabledagger
tag @s remove throweddagger
data modify entity @s Pose.Head[0] set value 0f
execute store result score @s Cooldown7 run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={counter=100..}] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute unless entity @s[scores={counter=100..}] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] -45
execute unless entity @s[scores={counter=100..}] run data modify entity @s Motion[1] set value 0.4d
execute unless entity @s[scores={counter=100..}] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] -45
execute unless entity @s[scores={counter=100..}] run scoreboard players add @s Cooldown8 3
execute unless entity @s[scores={counter=100..}] run scoreboard players add @s counter 100