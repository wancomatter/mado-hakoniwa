execute as @a[sort=nearest,limit=1,distance=..16,gamemode=!spectator,gamemode=!creative] run tag @s add target
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["pot_target"]}
scoreboard players operation @e[tag=pot_target] playerNumber = @a[tag=target,limit=1,sort=nearest] playerNumber
execute as @e[tag=pot_target] store result score @s counter1 run data get entity @a[tag=target,limit=1] Pos[0] 100
execute as @e[tag=pot_target] store result score @s counter2 run data get entity @a[tag=target,limit=1] Pos[2] 100
tag @a[tag=target] remove target