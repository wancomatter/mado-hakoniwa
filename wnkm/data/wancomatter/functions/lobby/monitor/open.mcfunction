function wancomatter:lobby/monitor/reset
execute as @e[tag=monitorUIslime] run tp @s 0 -10 0
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:19s}
summon minecraft:slime 0 -10 0 {Tags:["monitorUIslime"],Size:4,NoAI:1b,Silent:1b,DeathLootTable:"empty",ActiveEffects:[{Id:11b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Team:"noPush"}
effect clear @s levitation
effect give @s levitation 1 255
tp @s @s
particle minecraft:enchant 0 67.625 0 2 0.5 2 1 200 normal @a