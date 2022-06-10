scoreboard players operation #dummy playerNumber = @s playerNumber
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.8 2

summon minecraft:armor_stand ~ ~ ~ {Tags:["discharge"],Marker:1b,NoGravity:1b,Invisible:1b}
execute store result score #dummy subcounter run data get entity @e[tag=discharge,limit=1] UUID[1] 1
scoreboard players operation #dummy subcounter %= #4 counter
execute if score #dummy subcounter matches 0 run scoreboard players set #dummy subcounter2 4

execute store result score #dummy subcounter2 run data get entity @e[tag=discharge,limit=1] UUID[3] 1
scoreboard players operation #dummy subcounter2 %= #4 counter
scoreboard players remove #dummy subcounter2 2
execute if score #dummy subcounter2 matches 0 run scoreboard players set #dummy subcounter2 2
kill @e[type=armor_stand,tag=discharge]

scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score #dummy subcounter matches 1.. run function wancomatter:boss/detonator/skill2/move
execute unless score @s subcounter matches 1.. if score #difficult counter matches 2..4 run tag @s add detonator_skill2_shot
execute unless score @s subcounter matches 1.. run function wancomatter:boss/detonator/skill2/advent
scoreboard players reset #dummy