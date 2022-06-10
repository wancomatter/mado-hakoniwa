particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 4 normal @a
particle minecraft:item minecraft:bone_block ~ ~ ~ 0.5 0.5 0.5 0.5 120 normal @a
particle minecraft:item minecraft:bone_block ~ ~ ~ 0.5 0.5 0.5 0.5 30 force @a
playsound entity.generic.explode master @a ~ ~ ~ 0.8 2

execute if entity @e[scores={maxHP=1..},distance=..1.5,limit=1] as @e[scores={maxHP=1..},distance=..1.5] unless score @s teamNumber = #necroBoss teamNumber run function wancomatter:boss/necro/skill1/mage/hit
kill @s
