playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1.2 0.5
scoreboard players set #dummy dummy 0
execute positioned ~ ~-0.3 ~ rotated ~ 0 run function wancomatter:skills/058/loop
scoreboard players set @e[tag=first] maxHP 2147483647
scoreboard players set @e[tag=first] HP 2147483647
tag @e[tag=first] remove first
scoreboard players reset #dummy

particle minecraft:instant_effect ~ ~ ~ 3.1 0 3.1 1 80 normal @a
particle minecraft:instant_effect ~ ~ ~ 3.1 0 3.1 1 20 force @a
particle minecraft:crit ~ ~ ~ 3.1 0 3.1 1 160 normal @a
particle minecraft:crit ~ ~ ~ 3.1 0 3.1 1 40 force @a
kill @s