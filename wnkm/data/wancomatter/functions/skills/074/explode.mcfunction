playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1.5 1
particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 400 normal @a
particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 100 force @a
particle minecraft:large_smoke ~ ~ ~ 4.5 4.5 4.5 0.05 400 normal @a
particle minecraft:large_smoke ~ ~ ~ 4.5 4.5 4.5 0.05 100 force @a
particle minecraft:dust 0.2 0.2 0.2 2 ~ ~ ~ 3.2 3.2 3.2 0.05 400 normal @a
particle minecraft:dust 0.2 0.2 0.2 2 ~ ~ ~ 3.2 3.2 3.2 0.05 100 force @a
data merge entity @s {Glowing:0b}
scoreboard players set @s subcounter 0