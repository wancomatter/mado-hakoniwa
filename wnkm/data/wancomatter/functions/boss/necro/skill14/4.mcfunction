execute unless score #difficult counter matches 4 run function wancomatter:boss/necro/skill14/4_3
execute if score #difficult counter matches 4 run function wancomatter:boss/necro/skill14/4_4

playsound minecraft:item.totem.use master @a ~ ~ ~ 4.5 1.6
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 4.5 0.72

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] if score @s teamNumber = #necroBoss teamNumber run tag @s remove hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill14/hit

kill @s