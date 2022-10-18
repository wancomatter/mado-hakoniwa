scoreboard players add @s Cooldown7 1
execute store result score #- Cooldown2 run data get entity @s Rotation[0] 100

scoreboard players operation #- playerNumber = @s playerNumber
scoreboard players operation #- teamNumber = @s teamNumber
execute if score @s Cooldown7 matches 1 as @e[distance=..4.8,scores={maxHP=1..}] unless score @s teamNumber = #- teamNumber run tag @s add hit
execute if score @s Cooldown7 matches 2 as @e[distance=2.4..7.2,scores={maxHP=1..}] unless score @s teamNumber = #- teamNumber run tag @s add hit
execute if score @s Cooldown7 matches 3 as @e[distance=4.8..9.6,scores={maxHP=1..}] unless score @s teamNumber = #- teamNumber run tag @s add hit
execute if score @s Cooldown7 matches 4 as @e[distance=7.2..12.0,scores={maxHP=1..}] unless score @s teamNumber = #- teamNumber run tag @s add hit
execute as @a[tag=hit,gamemode=spectator] run tag @s remove hit

scoreboard players set @s subcounter 50
scoreboard players operation #- Cooldown1 = @s Cooldown7
scoreboard players remove #- Cooldown1 1
execute if score #- Cooldown1 matches 002.. run tag @s add 211tmp.002
execute if score #- Cooldown1 matches 002.. run scoreboard players remove #- Cooldown1 002
execute if score #- Cooldown1 matches 001.. run tag @s add 211tmp.001
execute if score #- Cooldown1 matches 001.. run scoreboard players remove #- Cooldown1 001
execute rotated ~-37.5 ~ positioned ~ ~0.1 ~ run function wancomatter:skills/023/5.repeat
function wancomatter:skills/023/sound/002
execute if entity @s[tag=211tmp.002] run tag @s remove 211tmp.002
execute if entity @s[tag=211tmp.001] run tag @s remove 211tmp.001

tag @s add me
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:skills/023/5.check
tp @s ~ ~ ~ ~ ~
tag @s remove me

scoreboard players reset #-
scoreboard players set @s subcounter2 0
execute if score @s Cooldown7 matches 4.. run kill @s