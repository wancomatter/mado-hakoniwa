execute unless score @s maxMana matches 3 run function wancomatter:boss/necro/skill11/0_p2
execute if score @s maxMana matches 3 run function wancomatter:boss/necro/skill11/0_p3
tp @s 0 -10 0
effect give @e[tag=necro] luck 100 9 true
execute as @e[tag=necro_stand] run data merge entity @s {Glowing:0b}

summon armor_stand ~ ~ ~ {Tags:["first","necro_s11_ghost_rage"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=first] at @s facing entity @e[tag=necro_s11_target_pos,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=first] at @s run function wancomatter:operation/distance
execute as @e[tag=first] run scoreboard players operation @s subcounter = @s dummy
execute as @e[tag=first] run scoreboard players operation @s subcounter /= #4 counter
execute as @e[tag=first] run scoreboard players reset @s dummy
execute as @e[tag=first] store result score @s Cooldown1 run data get entity @e[tag=necro_s11_target_pos,limit=1] Pos[0] 100
execute as @e[tag=first] store result score @s Cooldown2 run data get entity @e[tag=necro_s11_target_pos,limit=1] Pos[1] 100
execute as @e[tag=first] store result score @s Cooldown3 run data get entity @e[tag=necro_s11_target_pos,limit=1] Pos[2] 100
tag @e[tag=first] remove first

particle minecraft:witch ~ ~1 ~ 0.2 0.6 0.2 0.1 44 normal @a
particle minecraft:witch ~ ~1 ~ 0.2 0.6 0.2 0.1 11 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 3.5 0.5

