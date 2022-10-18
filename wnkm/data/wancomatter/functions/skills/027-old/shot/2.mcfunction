playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.1 0.8
#particle minecraft:lava ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 10 normal @a

scoreboard players operation #skill_dmg teamNumber = @s teamNumber
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[scores={maxHP=1..},dx=0] unless score @s teamNumber = #skill_dmg teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/027/shot/dmg
scoreboard players reset #skill_dmg

tp @s ^ ^ ^1 ~ ~
execute unless block ^ ^ ^1 #wancomatter:air run scoreboard players set @s counter 100
