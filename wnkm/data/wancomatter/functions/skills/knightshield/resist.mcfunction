scoreboard players set @s damageTaken 0
tag @s remove magicDamage
scoreboard players set @e[tag=nowBlackShield] counter 0
scoreboard players set @s instantDMGshield 100
scoreboard players set @s instantDMGS_time 8
particle minecraft:item obsidian ~ ~1 ~ 1.2 1.2 1.2 0 64 normal @a
particle minecraft:item obsidian ~ ~1 ~ 1.2 1.2 1.2 0 16 force @a
particle minecraft:barrier ~ ~1 ~ 0.5 0.5 0.5 1 4 normal @a
particle minecraft:barrier ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a
playsound minecraft:item.shield.block master @a ~ ~ ~ 1.2 0.5