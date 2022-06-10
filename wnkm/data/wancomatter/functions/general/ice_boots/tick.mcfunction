execute positioned ~ ~1 ~ unless entity @a[tag=ice_boots,limit=1,distance=..3.0,gamemode=!spectator] run tag @s add ice_boots_end
execute unless block ~ ~ ~ minecraft:ice run tag @s add ice_boots_end
execute if entity @s[tag=ice_boots_end] run fill ~ ~ ~ ~ ~ ~ minecraft:water[level=0] replace minecraft:ice
execute if entity @s[tag=ice_boots_end] run kill @s

