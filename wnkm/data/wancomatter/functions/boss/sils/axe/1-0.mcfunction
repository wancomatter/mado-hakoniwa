execute as @a[sort=nearest,limit=1,distance=..16,scores={maxHP=1..}] run tag @s add target
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["axe_target"]}
scoreboard players operation @e[tag=axe_target] playerNumber = @a[tag=target,limit=1,sort=nearest] playerNumber
execute as @e[tag=axe_target] store result score @s subcounter run data get entity @a[tag=target,limit=1] Pos[0] 270
execute as @e[tag=axe_target] store result score @s subcounter2 run data get entity @a[tag=target,limit=1] Pos[2] 270
tag @a[tag=target] remove target