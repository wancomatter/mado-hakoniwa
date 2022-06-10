execute as @e[tag=now-heathaze] run effect clear @s minecraft:invisibility
execute as @e[tag=now-heathaze] run effect clear @s minecraft:speed
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1.5
tag @a[tag=now-heathaze] remove now-heathaze
scoreboard players reset #dummy