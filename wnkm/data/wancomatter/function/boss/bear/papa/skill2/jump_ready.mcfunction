scoreboard players set @s Cooldown1 50
execute at @a[tag=bear_s2target,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Duration:4,Tags:["bear_s2_MotionAEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute as @e[tag=bear_s2_MotionAEC] store result score @s Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=bear_s2_MotionAEC] store result score @s Cooldown2 run data get entity @s Pos[2] 100
execute as @e[tag=bear_s2_MotionAEC] run scoreboard players operation @s Cooldown3 = @s Cooldown1
execute as @e[tag=bear_s2_MotionAEC] run scoreboard players operation @s Cooldown4 = @s Cooldown2
