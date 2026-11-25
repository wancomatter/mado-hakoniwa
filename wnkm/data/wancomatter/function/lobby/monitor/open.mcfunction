function wancomatter:lobby/monitor/reset
execute as @e[tag=monitorUIslime] run tp @s 0 -10 0
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:19s}
summon minecraft:slime 0 -10 0 {ActiveEffects:[{Amplifier:0b,Duration:2147483647,Id:11,ShowParticles:0b},{Amplifier:0b,Duration:2147483647,Id:14,ShowParticles:0b}],NoAI:1b,Silent:1b,Size:4,Tags:["monitorUIslime","wnkm.owned"],Team:"noPush",active_effects:[{amplifier:0b,duration:2147483647,id:"minecraft:resistance",show_particles:0b},{amplifier:0b,duration:2147483647,id:"minecraft:invisibility",show_particles:0b}],DeathLootTable:"empty"}
effect clear @s levitation
effect give @s levitation 1 255
tp @s @s
particle minecraft:enchant 0 67.625 0 2 0.5 2 1 200 normal @a
