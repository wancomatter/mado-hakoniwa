execute as @e[tag=necro] facing ~ ~ ~ positioned as @s run tp @s ~ ~ ~ ~ 0
execute store result score @s Cooldown3 run data get entity @a[tag=necro_s6_target_player,limit=1] Pos[0] 1000
execute store result score @s Cooldown4 run data get entity @a[tag=necro_s6_target_player,limit=1] Pos[2] 1000
scoreboard players operation @s Cooldown5 = @s Cooldown3
scoreboard players operation @s Cooldown6 = @s Cooldown4
scoreboard players operation @s Cooldown3 -= @s Cooldown1
scoreboard players operation @s Cooldown4 -= @s Cooldown2
scoreboard players operation @s Cooldown3 *= #13 counter
scoreboard players operation @s Cooldown4 *= #13 counter
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s Cooldown5 += @s Cooldown3
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s Cooldown6 += @s Cooldown4
tag @a[tag=necro_s6_target_player] remove necro_s6_target_player

tag @s add necro_s6_target
execute as @e[tag=necro] at @s facing entity @e[tag=necro_s6_target,limit=1] feet rotated ~ 0 run function wancomatter:boss/necro/skill6/2_use
kill @s
