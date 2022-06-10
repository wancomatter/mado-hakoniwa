particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 300 normal @a
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 75 force @a
particle minecraft:flash ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:flash ~ ~ ~ 1 1 1 1 2 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 1.0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 0.9
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 0.8
effect give @s minecraft:luck 2 9 true

tag @e[tag=bear_s2_MotionAEC] add target_distance
execute as @e[tag=bear_s2_MotionAEC] store result score @s Cooldown5 run data get entity @a[tag=bear_s2target,limit=1,sort=nearest] Pos[0] 100
execute as @e[tag=bear_s2_MotionAEC] store result score @s Cooldown6 run data get entity @a[tag=bear_s2target,limit=1,sort=nearest] Pos[2] 100
execute as @e[tag=bear_s2_MotionAEC] run scoreboard players operation @s Cooldown5 -= @s Cooldown3
execute as @e[tag=bear_s2_MotionAEC] run scoreboard players operation @s Cooldown6 -= @s Cooldown4
scoreboard players operation @e[tag=bear_s2_MotionAEC] Cooldown5 *= #29 counter
scoreboard players operation @e[tag=bear_s2_MotionAEC] Cooldown6 *= #29 counter
execute as @e[tag=bear_s2_MotionAEC] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s Cooldown1 += @s Cooldown5
execute as @e[tag=bear_s2_MotionAEC] store result entity @s Pos[2] double 0.01 run scoreboard players operation @s Cooldown2 += @s Cooldown6
data modify entity @e[tag=bear_s2_MotionAEC,limit=1] Pos[1] set from entity @s Pos[1]
function wancomatter:operation/distance
summon area_effect_cloud 0.0 1.0 0.0 {Tags:["bear_s2AEC2"],Duration:2}
scoreboard players operation @e[tag=bear_s2AEC2,limit=1] dummy = @s dummy
execute facing entity @e[tag=bear_s2_MotionAEC,limit=1] feet as @e[tag=bear_s2AEC2] run tp @s 0.0 1.0 0.0 ~ 0
execute as @e[tag=bear_s2AEC2] at @s run function wancomatter:operation/0.01tp
data modify entity @s Motion set from entity @e[tag=bear_s2AEC2,limit=1] Pos
tag @s add bear_s2_jump
