scoreboard players set @s Cooldown4 200
execute if score #difficult counter matches 3..4 run scoreboard players set @s Cooldown6 240
tag @s add usedskill
kill @e[tag=b3vermilionLance]
kill @e[tag=b3fireGate]
kill @e[tag=b3fireArrow]
kill @e[tag=b3ignisStrike]
kill @e[tag=b3magmaBase]
kill @e[tag=b3magmaCross]
kill @e[tag=b3volcanoSeed]
kill @e[tag=b3volcano]
kill @e[tag=b3roundStand]
kill @e[tag=b3roundLance]
kill @e[tag=b3s0target]
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
summon minecraft:marker ~ ~ ~ {Tags:["this","b3magmaBase"]}
tp @e[tag=this,limit=1] ~ ~ ~ ~ 0
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 4 2
particle minecraft:flame ~ ~ ~ 1 1 1 1 500 normal @a
particle minecraft:flame ~ ~ ~ 1 1 1 1 125 force @a
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] subcounter -2
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this] subcounter -4
tag @e[tag=this] remove this
function wancomatter:boss/dusk/skill0/advent