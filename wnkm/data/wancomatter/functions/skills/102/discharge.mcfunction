#コスト支払い
scoreboard players remove @s Mana 13
scoreboard players set @s CooldownX 400
scoreboard players set @s CooldownX_max 400

execute store result score #dummy Cooldown1_max run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2_max run data get entity @s Pos[1] 10
execute store result score #dummy Cooldown3_max run data get entity @s Pos[2] 10
tag @s add now-poseidon-attack
execute as @e[distance=..5,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=now-poseidon-attack,limit=1] teamNumber run tag @s add poseidon-attack-hit
execute if entity @e[tag=poseidon-attack-hit,limit=1] as @e[tag=poseidon-attack-hit] at @s run function wancomatter:skills/102/hit-entity
tag @s remove now-poseidon-attack
scoreboard players reset #dummy

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1
execute rotated ~ 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^ ^2 0 0 0 0 1 force @a
execute rotated ~ 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~20 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~40 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~60 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~80 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~100 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~140 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~160 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~180 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~200 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~220 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~260 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~280 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~300 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~320 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
execute rotated ~340 0 run particle minecraft:explosion ^ ^ ^4 0 0 0 0 1 force @a
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 400 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force @a