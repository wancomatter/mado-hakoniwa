tag @s add creeperA_judging
execute as @e[tag=creeperA_judge] if score @s subcounter2 = @e[tag=creeperA_judging,limit=1] subcounter2 run kill @s
summon minecraft:armor_stand ~ ~ ~ {Tags:["this","creeperA_judge"],Marker:1b,NoGravity:1b,Invisible:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this,limit=1] subcounter2 = @s subcounter2
execute store result score @e[tag=this,limit=1] Cooldown1 run data get entity @s Motion[0] 100
execute store result score @e[tag=this,limit=1] Cooldown2 run data get entity @s Motion[1] 100
execute store result score @e[tag=this,limit=1] Cooldown3 run data get entity @s Motion[2] 100
tag @s remove creeperA_judging
tag @e[tag=this] remove this