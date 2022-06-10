tag @s add usedskill
scoreboard players set @s Cooldown7 198
summon minecraft:marker ~ ~ ~ {Tags:["this","b3roundStand"]}
execute as @e[tag=this] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this] store result score @s counter run data get entity @s Rotation[0] 10
execute as @e[tag=this] run scoreboard players operation @s subcounter = @s counter
execute as @e[tag=this] run scoreboard players add @s subcounter 4400
execute if score #difficult counter matches 3 run scoreboard players set @s subcounter2 5
execute if score #difficult counter matches 4 run scoreboard players set @s subcounter2 10
execute unless score #difficult counter matches 2..4 run scoreboard players add @e[tag=this] Mana 924
execute if score #difficult counter matches 2 run scoreboard players add @e[tag=this] Mana 820
execute if score #difficult counter matches 3 run scoreboard players add @e[tag=this] Mana 640
execute if score #difficult counter matches 4 run scoreboard players add @e[tag=this] Mana 488
execute as @e[tag=this] run scoreboard players operation @s counter -= @s Mana
execute as @e[tag=this] run scoreboard players operation @s Mana /= #4 counter
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
particle minecraft:instant_effect ~ ~2 ~ 0.2 2 0.2 1 125 force @a
particle minecraft:instant_effect ~ ~0.3 ~ 2 0.4 2 1 125 force @a
particle minecraft:instant_effect ~ ~2 ~ 0.2 2 0.2 1 500 normal @a
particle minecraft:instant_effect ~ ~0.1 ~ 2 0.1 2 1 500 normal @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 4 1.5
function wancomatter:boss/dusk/skill0/advent