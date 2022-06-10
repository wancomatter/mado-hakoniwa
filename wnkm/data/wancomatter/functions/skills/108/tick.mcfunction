scoreboard players add @s counter 1
execute if score @s counter matches 1..11 run scoreboard players add @s subcounter2 12
scoreboard players operation @s subcounter += @s subcounter2
execute if entity @s[scores={subcounter=181..}] run scoreboard players remove @s subcounter 360
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s subcounter

#ダガーのMotionの微調整
execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539

execute if entity @s[scores={counter=2..}] store result score @s Cooldown2 run data get entity @s Motion[1] 100
execute if entity @s[scores={counter=2..}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 4

execute if entity @s[nbt={OnGround:1b},scores={counter=2..98}] run scoreboard players set @s counter 99
execute if entity @s[scores={counter=100..}] run kill @s
particle minecraft:dust 0.6 0.6 0.6 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 2 normal @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute positioned ~-0.5 ~-1.0 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ~-0.5 ~-1.0 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/108/hit
scoreboard players reset #dummy
