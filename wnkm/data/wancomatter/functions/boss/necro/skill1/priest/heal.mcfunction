execute unless score #difficult counter matches 3..4 run scoreboard players set @s HPheal 30
execute if score #difficult counter matches 3 run scoreboard players set @s HPheal 60
execute if score #difficult counter matches 4 run scoreboard players set @s HPheal 120
execute unless score #difficult counter matches 3..4 at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 1 5 force @a
execute if score #difficult counter matches 3 at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 1 10 force @a
execute if score #difficult counter matches 4 at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 1 20 force @a
execute at @s run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1.5
execute facing entity @s eyes run function wancomatter:boss/necro/skill1/priest/particle
tag @s remove heal_target