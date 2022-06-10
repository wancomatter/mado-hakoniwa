scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140
effect give @e[tag=your_horse] minecraft:speed 5 1
tag @e[tag=your_horse] remove your_horse
particle minecraft:cloud ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 50 force @a
playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.zombie_horse.hurt master @a ~ ~ ~ 1.2 0.5