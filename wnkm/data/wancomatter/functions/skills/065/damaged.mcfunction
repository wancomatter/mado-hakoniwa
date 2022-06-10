#受けたダメージを検知してその分だけHPスコアを減少
scoreboard players operation @e[tag=065,limit=1,sort=nearest] subcounter2 = @s HP
execute as @e[tag=065,limit=1,sort=nearest] run scoreboard players operation @s subcounter -= @s subcounter2
scoreboard players operation @s HP -= @e[tag=065,limit=1,sort=nearest] subcounter

#演出
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1.3 0.5
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 7 force @a
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 28 normal @a[distance=1..]

#盲目解除と移動阻害を付与
effect clear @s blindness
effect give @s slowness 10 3

scoreboard players set @e[tag=065] counter 100
tag @s remove meditation_using