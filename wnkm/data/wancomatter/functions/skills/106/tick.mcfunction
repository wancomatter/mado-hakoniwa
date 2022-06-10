scoreboard players add @s counter 1
execute if score @s counter matches 1..11 run scoreboard players add @s subcounter2 7
scoreboard players operation @s subcounter += @s subcounter2
execute if entity @s[scores={subcounter=181..}] run scoreboard players remove @s subcounter 360
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s subcounter

#ダガーのMotionの微調整
execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539

execute if entity @s[scores={counter=2..22}] store result score @s Cooldown2 run data get entity @s Motion[1] 100
execute if entity @s[scores={counter=2..10}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 7
execute if entity @s[scores={counter=11..16}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 5
execute if entity @s[scores={counter=17..22}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s Cooldown2 3

execute if entity @s[nbt={OnGround:1b},scores={counter=2..}] run scoreboard players add @s counter 100
execute if entity @s[scores={counter=99}] run scoreboard players add @s counter 100
execute if entity @s[scores={counter=100..}] run function wancomatter:skills/106/set-dagger
particle minecraft:dust 0.8 0 0 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 2 normal @a

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute positioned ~-0.5 ~-1.0 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add dagger-hit
execute positioned ~-0.5 ~-1.0 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add dagger-hit
execute if entity @e[tag=dagger-hit,limit=1] run function wancomatter:skills/106/hit-entity
scoreboard players reset #dummy
