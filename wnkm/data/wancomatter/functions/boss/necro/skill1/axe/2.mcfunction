execute store result score #dummy Cooldown1_max run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2_max run data get entity @s Pos[1] 10
execute store result score #dummy Cooldown3_max run data get entity @s Pos[2] 10
tag @s add this
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill1/axe/dmg
tag @s remove this
scoreboard players reset #dummy

tag @s remove necro_s1_axe_GC
effect clear @s jump_boost
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 0.5
execute rotated ~ 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^0.2 ^2 0 0 0 0 1 force @a
execute rotated ~ 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~10 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~30 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~50 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~70 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~90 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~110 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~130 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~150 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~170 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~190 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~210 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~230 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~250 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~270 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~290 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~310 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~330 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
execute rotated ~350 0 run particle minecraft:explosion ^ ^0.2 ^4 0 0 0 0 1 force @a
