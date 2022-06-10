tag @s add necro_s1_axe_GC
tag @s remove necro_s1_axe_GC_use
particle minecraft:lava ~ ~ ~ 0.2 0.4 0.2 1 20 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 0.4 100 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 0.4 40 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 1.0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 0.9
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 0.8


effect give @s minecraft:jump_boost 2 3 true
tag @e[tag=necro_s1_GC_AEC] add target_distance
execute as @e[tag=necro_s1_GC_AEC] store result score @s Cooldown5 run data get entity @a[tag=necro_s1_axe_target,limit=1,sort=nearest] Pos[0] 100
execute as @e[tag=necro_s1_GC_AEC] store result score @s Cooldown6 run data get entity @a[tag=necro_s1_axe_target,limit=1,sort=nearest] Pos[2] 100
execute as @e[tag=necro_s1_GC_AEC] run scoreboard players operation @s Cooldown5 -= @s Cooldown3
execute as @e[tag=necro_s1_GC_AEC] run scoreboard players operation @s Cooldown6 -= @s Cooldown4
scoreboard players operation @e[tag=necro_s1_GC_AEC] Cooldown5 *= #20 counter
scoreboard players operation @e[tag=necro_s1_GC_AEC] Cooldown6 *= #20 counter
execute as @e[tag=necro_s1_GC_AEC] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s Cooldown1 += @s Cooldown5
execute as @e[tag=necro_s1_GC_AEC] store result entity @s Pos[2] double 0.01 run scoreboard players operation @s Cooldown2 += @s Cooldown6
data modify entity @e[tag=necro_s1_GC_AEC,limit=1] Pos[1] set from entity @s Pos[1]
function wancomatter:operation/distance
summon area_effect_cloud 0.0 0.8 0.0 {Tags:["dummyAEC"],Duration:1}
scoreboard players operation @e[tag=dummyAEC,limit=1] dummy = @s dummy
scoreboard players operation @e[tag=dummyAEC,limit=1] dummy /= #12 counter
execute facing entity @e[tag=necro_s1_GC_AEC,limit=1] feet as @e[tag=dummyAEC] run tp @s 0.0 0.8 0.0 ~ 0
execute as @e[tag=dummyAEC] at @s run function wancomatter:operation/0.01tp
data modify entity @s Motion set from entity @e[tag=dummyAEC,limit=1] Pos
tag @a[tag=necro_s1_axe_target] remove necro_s1_axe_target
