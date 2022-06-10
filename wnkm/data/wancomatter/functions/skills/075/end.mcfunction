particle smoke ~ ~1 ~ 0 0 0 0.1 52 normal @a
particle smoke ~ ~1 ~ 0 0 0 0.1 13 force @a
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1.3 1

tag @a[tag=user] remove buff_lightning_p
execute as @e[tag=buff_lightning,scores={counter=..224}] if score @s playerNumber = #dummy playerNumber run tag @a[tag=user] add buff_lightning_p
