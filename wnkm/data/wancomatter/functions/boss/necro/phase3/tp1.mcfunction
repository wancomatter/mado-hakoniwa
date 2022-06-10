execute at @a[scores={maxHP=1..},limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["necro_p2_tp_target"],Duration:1}

execute positioned as @s as @e[tag=necro_p2_tp_target,limit=1] facing entity @s feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=necro_p2_tp_target,limit=1] at @s run function wancomatter:boss/necro/phase3/tp1_loop
execute facing entity @s feet run function wancomatter:boss/necro/phase2/tp_particle
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1
