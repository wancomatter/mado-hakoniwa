scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100

execute store result score #dummy subcounter run data get entity @s Rotation[0] 100
execute store result score #dummy subcounter2 run data get entity @s Rotation[1] 100
execute if score #dummy subcounter2 matches 1.. run scoreboard players set #dummy subcounter2 0
scoreboard players remove #dummy subcounter2 1800
scoreboard players set #dummy counter 0
function wancomatter:skills/004/discharge2-random
tag @s add stoneblast_addable

summon armor_stand ~ ~ ~ {Tags:["discharge","stoneblast_p_stand"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge

scoreboard players reset #dummy