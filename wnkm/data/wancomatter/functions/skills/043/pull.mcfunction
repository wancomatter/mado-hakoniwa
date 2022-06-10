summon armor_stand ^ ^ ^1 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
execute store result score #dummy Cooldown1 run data get entity @e[tag=vector,limit=1] Pos[0] 100
execute store result score #dummy Cooldown2 run data get entity @e[tag=vector,limit=1] Pos[1] 100
execute store result score #dummy Cooldown3 run data get entity @e[tag=vector,limit=1] Pos[2] 100
kill @e[tag=vector]
#pull_it
scoreboard players add @e[tag=pull_it] subcounter 1
execute at @e[tag=pull_it] run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 2 0.5

execute as @e[tag=pull_it] store result score @s Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=pull_it] store result score @s Cooldown2 run data get entity @s Pos[1] 100
execute as @e[tag=pull_it] store result score @s Cooldown3 run data get entity @s Pos[2] 100
scoreboard players remove @e[tag=pull_it] Cooldown2 100
execute as @e[tag=pull_it] store result entity @s Motion[0] double -0.004 run scoreboard players operation @s Cooldown1 -= #dummy Cooldown1
execute as @e[tag=pull_it] store result entity @s Motion[1] double -0.004 run scoreboard players operation @s Cooldown2 -= #dummy Cooldown2
execute as @e[tag=pull_it] store result entity @s Motion[2] double -0.004 run scoreboard players operation @s Cooldown3 -= #dummy Cooldown3
execute as @e[tag=pull_it] store result score @s Cooldown1 run data get entity @s Motion[0] 10000
execute as @e[tag=pull_it] store result score @s Cooldown2 run data get entity @s Motion[1] 10000
execute as @e[tag=pull_it] store result score @s Cooldown3 run data get entity @s Motion[2] 10000
scoreboard players reset #dummy
tag @e[tag=pull_it] remove pull_it
