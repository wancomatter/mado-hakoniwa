execute as @a run scoreboard players operation @s boss_hate2 = @s boss_hate
scoreboard players set @a boss_hate 0

execute as @a[scores={maxHP=1..,boss_hate2=1..}] run scoreboard players operation #necroBoss boss_hate > @s boss_hate2
execute as @a[scores={maxHP=1..,boss_hate2=1..}] if score @s boss_hate2 >= #necroBoss boss_hate run tag @s add target_player
execute unless entity @a[tag=target_player,limit=1] run tag @a[scores={maxHP=1..},limit=1,sort=nearest] add target_player
execute unless entity @a[tag=target_player,limit=1] run tag @e[limit=1,sort=random] add target_player
execute positioned 0.5 8.02 0.5 facing entity @e[tag=target_player,limit=1,sort=nearest] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^22.5 {Tags:["necro_s11_target_pos","target_distance"],Duration:1}
execute as @a[tag=target_player,limit=1,sort=nearest] run scoreboard players add @s boss_hate2 100000
tag @e[tag=target_player] remove target_player
