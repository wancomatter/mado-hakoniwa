scoreboard players add @s Cooldown6_max 1
execute if entity @a[tag=b1s6target] facing entity @a[tag=b1s6target,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
execute store result score @s Cooldown2_max run data get entity @s Rotation[0] 100
function wancomatter:boss/detonator/skill6/discharge-bullet
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 2
execute if score @s Cooldown6_max matches 40.. run tag @e[tag=b1s6target] remove b1s6target
execute if score @s Cooldown6_max matches 40.. run tag @s remove b1s6
execute if score @s Cooldown6_max matches 40.. run scoreboard players reset @s Cooldown6_max