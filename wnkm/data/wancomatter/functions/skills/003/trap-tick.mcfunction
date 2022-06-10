scoreboard players add @s counter 1
execute if score @s counter matches 1200.. run kill @s

particle minecraft:block packed_ice ~ ~0.88 ~ 0 0 0 1 1 force @a

scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 10.. positioned ^ ^ ^1 run function wancomatter:skills/003/trap-check-entity
execute if score #dummy subcounter matches 112 run function wancomatter:skills/003/trap-discharge
scoreboard players reset #dummy
