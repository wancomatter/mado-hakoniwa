scoreboard players set @s sliding_boots 30
scoreboard players remove @s Mana 2
tag @s add sliding_boots_use

particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.1 8 normal @a
particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.1 2 force @a
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:6,Radius:0.0f,Tags:["sliding_boots_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}

tag @s remove use
