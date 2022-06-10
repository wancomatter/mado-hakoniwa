#コスト支払い
scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.5 0.7
execute positioned ^ ^ ^3.0 run particle minecraft:enchanted_hit ~ ~1 ~ 2.4 0 2.4 0.5 280 normal @a
execute positioned ^ ^ ^3.0 run particle minecraft:enchanted_hit ~ ~1 ~ 2.4 0 2.4 0.5 70 force @a
execute rotated ~-80 0 positioned ~ ~1 ~ run function wancomatter:skills/053/particle
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[tag=hit] if score @s teamNumber = #dummy teamNumber run tag @s remove hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/053/hit-entity
scoreboard players reset #dummy

