scoreboard players add @s counter 1

execute if score @s counter matches 1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.29
execute if score @s counter matches 2 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.08
execute if score @s counter matches 3 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.38
execute if score @s counter matches 4 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.11
execute if score @s counter matches 5 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.14
execute if score @s counter matches 6 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.01
execute if score @s counter matches 7 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.22
execute if score @s counter matches 8 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.36
execute if score @s counter matches 9 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.01
execute if score @s counter matches 10 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.06
execute if score @s counter matches 11 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.34
execute if score @s counter matches 12 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.04
execute if score @s counter matches 13 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.04
execute if score @s counter matches 14 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.13
execute if score @s counter matches 15 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.19
execute if score @s counter matches 16 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.17
execute if score @s counter matches 17 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.39
execute if score @s counter matches 18 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.28
execute if score @s counter matches 19 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.06
execute if score @s counter matches 20 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.34
execute if score @s counter matches 21 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.41
execute if score @s counter matches 22 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.4
execute if score @s counter matches 23 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.38
execute if score @s counter matches 24 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.16
execute if score @s counter matches 25 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.34
execute if score @s counter matches 26 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.04
execute if score @s counter matches 27 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.3
execute if score @s counter matches 28 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.22
execute if score @s counter matches 29 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.08
execute if score @s counter matches 30 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-2 ~ 2.4 1.36

particle end_rod ~ ~ ~ 0 0 0 0.3 3 force @a
particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 3 force @a
particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 12 normal @a
#particle minecraft:falling_dust crimson_nylium ~ ~ ~ 3 1 3 1 20

summon minecraft:armor_stand ^-2.4 ^ ^ {Tags:["first","power_star_fall"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=first,limit=1] dummy = @s counter
scoreboard players operation @e[tag=first,limit=1] dummy *= #5 counter
scoreboard players operation @e[tag=first,limit=1] dummy %= #7 counter
#tellraw @a {"score":{"name":"@e[tag=first,limit=1]","objective":"dummy"}}
execute as @e[tag=first,limit=1] if score @s dummy matches 4.. positioned as @s run tp @s ^3.2 ^ ^
execute as @e[tag=first,limit=1] if score @s dummy matches 4.. run scoreboard players remove @s dummy 4
execute as @e[tag=first,limit=1] if score @s dummy matches 2.. positioned as @s run tp @s ^1.6 ^ ^
execute as @e[tag=first,limit=1] if score @s dummy matches 2.. run scoreboard players remove @s dummy 2
execute as @e[tag=first,limit=1] if score @s dummy matches 1.. positioned as @s run tp @s ^0.8 ^ ^
execute as @e[tag=first,limit=1] if score @s dummy matches 1.. run scoreboard players remove @s dummy 1
scoreboard players operation @e[tag=first,limit=1] subcounter = @s subcounter
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
tag @e[tag=first] remove first

tp @s ^ ^ ^1.5 ~ ~

execute if score @s counter matches 30.. run kill @s