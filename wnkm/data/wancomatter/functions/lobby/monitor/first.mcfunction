execute as @a if score @s playerNumber = #monitor playerNumber at @s run function wancomatter:lobby/monitor/close
scoreboard players operation #monitor playerNumber = @s playerNumber
scoreboard players set #monitor counter 1
execute if score #autostart counter matches 0.. unless score #autostart subcounter2 matches 29.. run function wancomatter:lobby/monitor/cancel
tp @s 0 63.8 0 0 0
effect give @s minecraft:levitation 10 2 true
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.2 0.7
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.2 0.7
particle minecraft:portal 0 67.7 0 0.1 0.1 0.1 5 400 normal @a