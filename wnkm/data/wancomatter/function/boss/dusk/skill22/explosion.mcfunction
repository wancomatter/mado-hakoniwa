execute rotated 0 0 run function wancomatter:boss/dusk/skill22/circle
particle minecraft:poof ~ ~ ~ 1 1 1 1 600 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 60 force @a
particle minecraft:poof ~ ~ ~ 0 0 0 2 600 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 2 60 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 6 0.5
tag @s add this
execute as @e[distance=..7,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/dusk/skill22/dmg1
tag @s remove this
tellraw @a {"text":"『黄昏の焔』","color":"red","bold":true}
execute as @e[tag=dusk] at @s run function wancomatter:boss/dusk/skill20/first
effect give @e[tag=dusk] minecraft:slowness 10 9 true
tag @e[tag=dusk] add b3s20
tag @e[tag=dusk] add b3s20first


execute unless score #difficult counter matches 2..4 run scoreboard players add @s counter 100
execute if score #difficult counter matches 2 run scoreboard players add @s counter 70
execute if score #difficult counter matches 3 run scoreboard players add @s counter 40
scoreboard players operation #dummy dummy = @s counter
scoreboard players operation #dummy dummy *= #-1 counter
scoreboard players add #dummy dummy 460
scoreboard players operation @e[tag=dusk] counter -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown1 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown2 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown3 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown4 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown5 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown6 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown7 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown8 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown9 = #dummy dummy
scoreboard players reset #dummy

tp @s ~ ~ ~ -54 0
