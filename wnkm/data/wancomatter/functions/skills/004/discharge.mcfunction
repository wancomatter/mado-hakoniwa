scoreboard players remove @s Mana 7
scoreboard players add @s CooldownX 100
scoreboard players add @s CooldownX_max 100

execute store result score #dummy subcounter run data get entity @s Rotation[0] 100
execute store result score #dummy subcounter2 run data get entity @s Rotation[1] 100
execute if score #dummy subcounter2 matches -3001.. run scoreboard players set #dummy subcounter2 -3000
scoreboard players remove #dummy subcounter2 3000
scoreboard players set #dummy counter 0
function wancomatter:skills/004/discharge-random
tag @s remove stoneblast_addable

scoreboard players reset #dummy