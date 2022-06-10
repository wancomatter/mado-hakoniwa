playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 0.5
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 600 normal @a
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 150 force @a

tp @e[tag=necro] 0 -10 0
effect give @e[tag=necro] luck 100 9 true
execute as @e[tag=necro_stand] run data merge entity @s {Glowing:0b}
summon minecraft:area_effect_cloud 0 12.8 0 {Tags:["necro_s8_stand3","first"],Duration:2000}
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first,limit=1] counter 30
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first,limit=1] counter 25
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first,limit=1] counter 15
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first,limit=1] counter 0
tag @e[tag=first] remove first

execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0
