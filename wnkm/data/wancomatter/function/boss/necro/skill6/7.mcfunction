playsound minecraft:block.end_gateway.spawn master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1 0.5
particle smoke ~ ~ ~ 3 3 3 1 128
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 2

execute as @e[scores={maxHP=1..},distance=..3.9] unless score @s teamNumber = #necroBoss teamNumber run function wancomatter:boss/necro/skill6/hit

kill @s
