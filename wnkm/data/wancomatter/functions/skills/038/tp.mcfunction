gamemode adventure @s
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.5 2
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 80 normal @a
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.4 20 force @a
tag @s remove short_teleport_p
scoreboard players set @s dummy 0
execute facing entity @s feet run function wancomatter:skills/038/particle
scoreboard players reset @s dummy