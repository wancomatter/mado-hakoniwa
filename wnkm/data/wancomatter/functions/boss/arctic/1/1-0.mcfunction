execute as @a[distance=..12,gamemode=!spectator,scores={maxHP=1..}] run tag @s add target
scoreboard players set @a[tag=target] dummy 50
function wancomatter:boss/arctic/move/target/select
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["axe_target"]}
scoreboard players operation @e[tag=axe_target] playerNumber = @a[tag=target,limit=1,sort=nearest] playerNumber
execute as @e[tag=axe_target] store result score @s subcounter run data get entity @a[tag=target,limit=1] Pos[0] 260
execute as @e[tag=axe_target] store result score @s subcounter2 run data get entity @a[tag=target,limit=1] Pos[2] 260
tag @a[tag=target] remove target