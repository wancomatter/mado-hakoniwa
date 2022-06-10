particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.witch.drink master @a ~ ~ ~ 4 2
scoreboard players operation #dragonBoss teamNumber = @s teamNumber
execute if entity @e[distance=..2.3,scores={maxHP=1..},limit=1] as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #dragonBoss teamNumber run tag @s add hit
execute if entity @e[distance=..2.3,scores={maxHP=1..},limit=1] as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #dragonBoss teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dragon/skill8/dmg1

execute if score #difficult counter matches 3..4 run function wancomatter:boss/dragon/skill8/attack_summon
