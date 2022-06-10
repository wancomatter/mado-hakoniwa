execute unless score #difficult counter matches 2..4 if score @s counter matches 11.. run scoreboard players set @s counter 10
execute if score #difficult counter matches 2 if score @s counter matches 26.. run scoreboard players set @s counter 25
execute if score #difficult counter matches 3 if score @s counter matches 41.. run scoreboard players set @s counter 40
execute if score #difficult counter matches 4 if score @s counter matches 51.. run scoreboard players set @s counter 50
effect give @s minecraft:slowness 2 9 true
execute if score @s Cooldown1 matches 1.. run scoreboard players operation @s Cooldown1 /= #2 counter
execute if score @s Cooldown2 matches 1.. run scoreboard players operation @s Cooldown2 /= #2 counter
execute if score @s Cooldown3 matches 1.. run scoreboard players operation @s Cooldown3 /= #2 counter
execute if score @s Cooldown4 matches 1.. run scoreboard players operation @s Cooldown4 /= #2 counter
execute if score @s Cooldown5 matches 1.. run scoreboard players operation @s Cooldown5 /= #2 counter
execute if score @s Cooldown6 matches 1.. if entity @s[tag=!b3s21used] if score #difficult counter matches 3..4 run scoreboard players operation @s Cooldown6 /= #2 counter
execute if score @s Cooldown7 matches 1.. run scoreboard players operation @s Cooldown7 /= #2 counter
execute if score @s Cooldown8 matches 1.. run scoreboard players operation @s Cooldown8 /= #2 counter
execute if score @s Cooldown9 matches 1.. run scoreboard players operation @s Cooldown9 /= #2 counter
tag @s add usedskill
execute as @a[scores={maxHP=1..}] run scoreboard players operation #dummy dummy > @s boss_hate
execute as @a[scores={maxHP=1..}] if score @s boss_hate >= #dummy dummy run tag @s add target
scoreboard players operation @a[tag=target] boss_hate /= #2 counter
scoreboard players reset #dummy
execute at @a[tag=target,limit=1,sort=nearest] run summon marker ~ ~0.3 ~ {Tags:["this","b3s0target"]}
scoreboard players operation @e[tag=this] playerNumber = @a[tag=target,limit=1,sort=nearest] playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] counter 10
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this] counter 15
execute at @e[tag=this] run particle minecraft:dust 1 0 0 1 ~ ~2 ~ 0.2 2 0.2 1 75 force @a
execute at @e[tag=this] run particle minecraft:dust 1 0 0 1 ~ ~0.3 ~ 2 0.4 2 1 75 force @a
execute at @e[tag=this] run particle minecraft:dust 1 0 0 1 ~ ~2 ~ 0.2 2 0.2 1 300 normal @a
execute at @e[tag=this] run particle minecraft:dust 1 0 0 1 ~ ~0.1 ~ 2 0.1 2 1 300 normal @a
particle minecraft:dust 1 0 0 1 ~ ~2 ~ 0.2 2 0.2 1 75 force @a
particle minecraft:dust 1 0 0 1 ~ ~0.3 ~ 2 0.4 2 1 75 force @a
particle minecraft:dust 1 0 0 1 ~ ~2 ~ 0.2 2 0.2 1 300 normal @a
particle minecraft:dust 1 0 0 1 ~ ~0.1 ~ 2 0.1 2 1 300 normal @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 4 1.5
tag @e[tag=target] remove target
tag @e[tag=this] remove this
