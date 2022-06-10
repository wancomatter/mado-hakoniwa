tag @s add windcut_addable
particle minecraft:end_rod ~ ~0.2 ~ 0.1 0.1 0.1 0.2 40 normal @a
particle minecraft:end_rod ~ ~0.2 ~ 0.1 0.1 0.1 0.2 10 force @a
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.2 1
effect give @s minecraft:slowness 1 0
summon marker 0.0 0.0 0.0 {Tags:["discharge","windcut_p_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge