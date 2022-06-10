gamemode adventure @s
tp @s ~ ~1 ~
effect give @s levitation 1 6 true
scoreboard players set @s levitateOperate 4
playsound entity.illusioner.mirror_move master @a ~ ~ ~ 0.9 2
playsound minecraft:entity.squid.death master @a ~ ~ ~ 1 0.8
particle minecraft:large_smoke ~ ~ ~ 0.6 0.6 0.6 0.4 80 normal @a
particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.25 20 force @a
particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.3 80 normal @a
particle minecraft:squid_ink ~ ~ ~ 0.1 0.1 0.1 0.2 20 force @a
