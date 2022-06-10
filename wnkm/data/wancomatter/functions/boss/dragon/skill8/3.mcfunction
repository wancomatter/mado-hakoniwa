scoreboard players operation #dragonBoss teamNumber = @s teamNumber
execute positioned ^ ^ ^-2 if entity @e[distance=..0.8,scores={maxHP=1..},limit=1] as @e[distance=..0.8,scores={maxHP=1..}] unless score @s teamNumber = #dragonBoss teamNumber run tag @s add hit
execute positioned ^ ^1.5 ^-2 if entity @e[distance=..0.8,scores={maxHP=1..},limit=1] as @e[distance=..0.8,scores={maxHP=1..}] unless score @s teamNumber = #dragonBoss teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dragon/skill8/dmg2

scoreboard players add @s counter 1
tp @s ^ ^ ^0.5
execute unless block ^ ^ ^0.5 #wancomatter:air run kill @s
execute if block ~ 7 ~ #wancomatter:air run kill @s
execute if score @s counter matches 80.. run kill @s