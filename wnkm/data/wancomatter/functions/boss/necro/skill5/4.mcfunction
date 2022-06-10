execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 8

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 10
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

playsound minecraft:entity.wither.shoot master @a ~ ~1 ~ 3 0.5
playsound minecraft:entity.wither.ambient master @a ~ ~1 ~ 3 0.9

summon minecraft:zombified_piglin ~ -8.02 ~ {Tags:["first","necro_s5pigman","necro_s5pigman_center"],Invulnerable:1b,Silent:1b,NoGravity:1b}
execute facing entity @a[tag=necro_s5_target,limit=1] feet as @e[tag=necro_s5pigman] positioned as @s run tp @s ~ ~ ~ ~ 0
execute facing entity @a[tag=necro_s5_target,limit=1] feet positioned as @a[tag=necro_s5_target,limit=1,sort=nearest] positioned ~ -8.02 ~ run summon area_effect_cloud ^ ^ ^1.5 {Tags:["necro_s5_target_pos"],Duration:300}
execute as @e[tag=first] at @s run function wancomatter:boss/necro/skill5/line_loop
tag @e[tag=first] remove first
tag @a[tag=necro_s5_target] remove necro_s5_target

kill @s
