scoreboard players operation #dummy playerNumber = @s ownerNumber
execute as @a[distance=..15] if score #dummy playerNumber = @s playerNumber run tag @s add sm-haniwa-owner
execute if score @s HP matches 180.. run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-haniwa-owner]
execute if score @s HP matches 121..180 run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-haniwa-owner]
execute if score @s HP matches 61..120 run particle minecraft:dust 1 0.5 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-haniwa-owner]
execute if score @s HP matches ..60 run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-haniwa-owner]
tag @a[tag=sm-haniwa-owner] remove sm-haniwa-owner
execute if data entity @s {HurtTime:10s} run playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 1 1
execute if data entity @s {HurtTime:10s} run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 2
execute if data entity @s {HurtTime:10s} run particle minecraft:block dirt ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
execute if data entity @s {HurtTime:10s} run particle minecraft:block dirt ~ ~1 ~ 0.5 0.5 0.5 1 5 force @a
execute if entity @s[tag=knight-com5] run scoreboard players add @s counter 1
execute if entity @s[tag=knight-com5,scores={counter=4..}] run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @s[tag=knight-com5,scores={counter=4..}] run function wancomatter:skills/029/rush