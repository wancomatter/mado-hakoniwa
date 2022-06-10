scoreboard players add @s counter 1
execute if score @s counter matches 2.. rotated ~ 0 run function wancomatter:boss/dusk/skill4/loop-f
execute if score @s counter matches 2.. as @e[tag=this] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
execute if score @s counter matches 2.. run scoreboard players reset @s dummy
execute if score @s counter matches 2.. run scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute if score @s counter matches 2.. run tag @e[tag=this,sort=random,limit=1] add b3s4sound
execute if score @s counter matches 2.. run tag @e[tag=this] remove this
execute if score @s counter matches 2.. run particle minecraft:lava ~ ~2 ~ 2 2 2 1 15 force @a
#execute if score @s counter matches 2.. run particle minecraft:lava ~ ~2 ~ 2 2 2 1 12 normal @a
execute if score @s counter matches 2.. run playsound minecraft:block.lava.pop master @a ~ ~ ~ 4.4 0.5
execute if score @s counter matches 2.. run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 4.4 2
execute if score @s counter matches 2.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 2.. run scoreboard players set @s counter 0
execute if score @s subcounter matches 7.. run kill @s
