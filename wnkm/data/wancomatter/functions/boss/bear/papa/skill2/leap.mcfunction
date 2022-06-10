execute at @e[tag=bear_p] run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 4 2
execute at @e[tag=bear_p] run particle cloud ~ ~ ~ 0.2 0.2 0.2 1 300 normal @a
execute at @e[tag=bear_p] run particle cloud ~ ~ ~ 0.2 0.2 0.2 1 75 force @a
scoreboard players set @e[tag=bear_p] Cooldown1 0

execute at @a[tag=bear_s2target,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["bear_s2AEC"],Duration:2}
execute store result score #dummy Cooldown1 run data get entity @e[tag=bear_p,limit=1] Pos[0] 25
execute store result score #dummy Cooldown2 run data get entity @e[tag=bear_s2AEC,limit=1,sort=nearest] Pos[0] 25
execute store result entity @e[tag=bear_p,limit=1] Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown3 run data get entity @e[tag=bear_p,limit=1] Pos[2] 25
execute store result score #dummy Cooldown4 run data get entity @e[tag=bear_s2AEC,limit=1,sort=nearest] Pos[2] 25
execute store result entity @e[tag=bear_p,limit=1] Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
data modify entity @e[tag=bear_p,limit=1] Motion[1] set value 0.65d
tag @e[tag=bear_p] add bear_s2