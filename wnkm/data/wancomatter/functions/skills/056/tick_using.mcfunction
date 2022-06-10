scoreboard players remove @s counter 10
tp @s ^ ^ ^1
particle minecraft:block nether_portal ^ ^1 ^0.00 0.5 0.5 0.5 0 2 force @a
particle minecraft:block nether_portal ^ ^1 ^0.50 0.5 0.5 0.5 0 2 normal @a
particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 normal @a
particle minecraft:enchanted_hit ^ ^ ^ 0 0 0 0 1 normal @a
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 0.7 2
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=portal_using_player] if score @s playerNumber = #dummy playerNumber run tag @s add user
gamemode spectator @a[tag=user]
tp @e[tag=user] ^ ^ ^1
execute if score @s counter matches ..0 as @a[tag=user] run gamemode adventure @s
execute if score @s counter matches ..0 run tag @a[tag=user] remove portal_using_player
tag @a[tag=user] remove user
execute if score @s counter matches ..0 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score @s counter matches ..0 run kill @s