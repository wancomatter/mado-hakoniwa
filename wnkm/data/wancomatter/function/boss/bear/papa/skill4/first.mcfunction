scoreboard players set @s Cooldown4 300
tag @s add usedskill
data remove entity @s Motion

playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 4 0.8
playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 4 2
particle minecraft:poof ~ ~ ~ 2 2 2 0.1 300 normal @a
particle minecraft:poof ~ ~ ~ 2 2 2 0.1 75 force @a


execute unless score #difficult counter matches 2..4 run schedule function wancomatter:boss/bear/papa/skill4/launch 32t
execute if score #difficult counter matches 2 run schedule function wancomatter:boss/bear/papa/skill4/launch 25t
execute if score #difficult counter matches 3 run schedule function wancomatter:boss/bear/papa/skill4/launch 20t
execute if score #difficult counter matches 4 run schedule function wancomatter:boss/bear/papa/skill4/launch 16t
