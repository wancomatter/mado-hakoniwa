scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 320
scoreboard players set @s CooldownX_max 320
tp @s ~ ~0.2 ~
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["discharge","stable","short_teleport"],Duration:100}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["discharge","stable","short_teleport2"],Duration:50}
scoreboard players operation @e[tag=discharge] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
tag @s add short_teleport_p
gamemode spectator @s

execute rotated ~000 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~010 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~020 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~030 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~040 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~050 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~060 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~070 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~080 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~090 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~100 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~110 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~120 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~130 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~140 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~150 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~160 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~170 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~180 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~190 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~200 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~210 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~220 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~230 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~240 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~250 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~260 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~270 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~280 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~290 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~300 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~310 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~320 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~330 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~340 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~350 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force @s
execute rotated ~005 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~015 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~025 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~035 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~045 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~055 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~065 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~075 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~085 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~095 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~105 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~115 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~125 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~135 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~145 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~155 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~165 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~175 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~185 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~195 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~205 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~215 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~225 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~235 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~245 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~255 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~265 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~275 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~285 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~295 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~305 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~315 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~325 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~335 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~345 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
execute rotated ~355 0 run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 normal @s
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 80 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.4 20 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.5 2
