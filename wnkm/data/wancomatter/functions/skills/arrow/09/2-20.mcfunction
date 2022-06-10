scoreboard players add @s Cooldown2 2
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s Cooldown2
particle minecraft:item_snowball ~ ~ ~ 2 0.2 2 1 10 normal @a
particle minecraft:falling_dust packed_ice ~ ~0.6 ~ 2 0.9 2 1 8 normal @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 2
