execute as @a[scores={maxHP=1..,boss_hate2=1..}] run scoreboard players operation #necroBoss boss_hate > @s boss_hate2
execute as @a[scores={maxHP=1..,boss_hate2=1..}] if score @s boss_hate2 >= #necroBoss boss_hate run tag @s add target_player
execute unless entity @a[tag=target_player,limit=1] run tag @a[scores={maxHP=1..},limit=1,sort=nearest] add target_player
execute at @a[tag=target_player,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["necro_p2_tp_target"],Duration:1}
tag @a[tag=target_player] remove target_player

execute as @e[tag=necro_p2_tp_target,limit=1] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=necro_p2_tp_target,limit=1] at @s run function wancomatter:boss/necro/phase2/tp1_loop
execute facing entity @s feet run function wancomatter:boss/necro/phase2/tp_particle
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1

scoreboard players set @a[scores={boss_hate2=1..}] boss_hate2 0