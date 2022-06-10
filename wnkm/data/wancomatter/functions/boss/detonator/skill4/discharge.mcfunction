scoreboard players set @s Cooldown4 220
tag @s add usedskill
execute if score #dufficult counter matches 4 run scoreboard players add @s Cooldown4_max 10
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1
particle minecraft:dust 1 0.2 0 2 ~ ~ ~ 2.4 2.4 2.4 1 200 normal @a
particle minecraft:dust 1 0.2 0 2 ~ ~ ~ 2.4 2.4 2.4 1 50 force @a
tag @s add b1s4
function wancomatter:boss/detonator/skill2/advent