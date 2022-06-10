#コスト支払い
scoreboard players remove @s Mana 6
scoreboard players set @e[tag=now] counter 0
tag @e[tag=now] remove now

playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.2 0.7
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1.2 0.5
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~1 ~ 1.6 0.4 1.6 0.5 280 normal @a
execute positioned ^ ^ ^2 run particle minecraft:crit ~ ~1 ~ 1.6 0.4 1.6 0.5 70 force @a
scoreboard players operation #dummy teamNumber = @s teamNumber
execute positioned ^ ^ ^2 as @e[distance=..2.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/knightshield/hit-entity
scoreboard players reset #dummy

