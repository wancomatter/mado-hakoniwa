scoreboard players set @s subcounter 0
function wancomatter:boss/dusk/skill0/tick51-loop
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 5 1.0
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 5 1.0
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..8,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill0/dmg
scoreboard players reset #dummy teamNumber
