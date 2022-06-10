scoreboard players set @s Cooldown3 360
tag @s add usedskill
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 0.5
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 0.5
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-45f]}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-45f]}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-22.5f]}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-22.5f]}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud","b1darkcloud45"],Rotation:[0f,-30f]}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud","b1darkcloud45"],Rotation:[0f,-30f]}
execute if score @s HP <= @s Mana run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-37.5f]}
execute if score @s HP <= @s Mana run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1darkcloud"],Rotation:[0f,-37.5f]}
execute as @e[tag=discharge] store result score @s Cooldown9 run data get entity @s UUID[1] 1
execute as @e[tag=discharge] store result entity @s Rotation[0] float 1 run scoreboard players operation @s Cooldown9 %= #360 counter
execute as @e[tag=discharge] store result score @s subcounter2 run data get entity @s UUID[3] 1
execute as @e[tag=discharge] run scoreboard players operation @s subcounter2 %= #29 counter
execute if score @s HP <= @s Mana as @e[tag=discharge] run tag @s add b1s3-large
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge