tp @s ^ ^ ^3

particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.3 48 normal @a
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.3 12 force @a

summon marker ~ ~ ~ {Tags:["sirius_circle","this"]}
tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s ownerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber

execute as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute positioned ^ ^ ^1.5 as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=this,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/011/hit1

tag @e[tag=this] remove this


scoreboard players add @s counter 1
execute if score @s counter matches 30.. run function wancomatter:skills/011/wolf_end