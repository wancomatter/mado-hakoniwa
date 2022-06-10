particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 1
scoreboard players add @s counter 1

#execute unless block ^ ^ ^0.4 #wancomatter:air run kill @s
#tp @s ^ ^ ^0.4

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add dummy
execute as @e[distance=..32,scores={maxHP=1..}] at @s anchored eyes facing entity @e[tag=dummy,limit=1] feet anchored feet positioned ^ ^ ^-50 rotated as @s positioned ^ ^ ^50 if entity @s[distance=..8] run tellraw @s {"score":{"objective":"counter","name":"@e[tag=dummy,limit=1]"}}
tag @s remove dummy

execute if score @s counter matches 600.. run kill @s
