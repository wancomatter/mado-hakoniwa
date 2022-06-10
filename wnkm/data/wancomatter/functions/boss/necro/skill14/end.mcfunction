particle minecraft:explosion ~ ~0.4 ~ 0.1 0.1 0.1 1 4 normal @a
particle minecraft:explosion ~ ~0.4 ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.9
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.9
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.9
data merge entity @s {Glowing:0b}
kill @e[tag=necro_s14_razer]
kill @s